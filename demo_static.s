.section
    .data
    .align 4
    .global c
                    ;      global Array:i32:[10] c 
    .type c @object
c:
    .word 1
    .word 2
    .word 3
    .align 4
    .global b
                    ;      global i32 b 
    .type b @object
b:
    .word 6
    .align 4
    .global a
                    ;      global i32 a 
    .type a @object
a:
    .word 3
.section
    .text
                    ;      Define main [] -> main_ret 
    .global main
    .type main @function
main:
    addi sp,sp,-24
    sd    ra,16(sp)
    sd    s0,24(sp)
                    ;      alloc ptr->i32 temp_5 
                    ;      label %0: 
%0:
                    ;      new_var temp_5:ptr->i32 
                    ;      temp_5 = getelementptr c:Array:i32:[10] [1] 
    mv s3, zero
    li s1, 1
    li s2, 1
    mul s4,s1,s2
    add s3,s3,s4
    slli s4,s4,2
    la s5, c
    add s3,s3,s5
                    ;      store 5:i32 temp_5:ptr->i32 
    li s2, 5
    ld    s1,8(sp)
    sd    s2,0(s1)
                    ;      mu c:29 
                    ;      c = chi c:29 
                    ;      store 3:i32 *b:ptr->i32 
    li s2, 3
                    ;   load label b as ptr to reg
    la s1, b
    sd    s2,0(s1)
                    ;      ret 0 
    ld    ra,16(sp)
    ld    s0,24(sp)
    li a0, 0
    addi sp,sp,-24
    ret

