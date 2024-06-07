.section
    .data
    .align 4
    .global d
                    ;      global Array:f32:[10, 10] d 
    .type d @object
d:
    .word 0.
    .word 0.
    .word 1.
    .zero 28
    .word 3.
    .align 4
    .global c
                    ;      global Array:i32:[10] c 
    .type c @object
c:
    .word 1
    .zero 1
.section
    .text
                    ;      Define b [s] -> b_ret 
    .global b
    .type b @function
b:
    addi sp,sp,24
    sd    ra,16(sp)
    sd    s0,24(sp)
    sw    a0,8(sp)
                    ;      label %1: 
%1:
                    ;      ret s 
    lw    ra,16(sp)
    lw    s0,24(sp)
    lw    a0,8(sp)
    addi sp,sp,-24
    ret
                    ;      Define main [] -> main_ret 
    .global main
    .type main @function
main:
    addi sp,sp,112
    sd    ra,104(sp)
    sd    s0,112(sp)
                    ;      alloc i32 b 
                    ;      alloc i32 c 
                    ;      alloc ptr->i32 temp_5 
                    ;      alloc ptr->i32 temp_6 
                    ;      alloc ptr->i32 temp_7 
                    ;      alloc ptr->i32 temp_8 
                    ;      alloc ptr->i32 temp_9 
                    ;      alloc ptr->i32 temp_10 
                    ;      alloc Array:i32:[2, 3] d 
                    ;      alloc ptr->i32 temp_11 
                    ;      alloc i32 temp_12 
                    ;      label %0: 
%0:
                    ;      new_var b:i32 
                    ;      c = 3 
    li s3, 3
    sw    s3,92(sp)
                    ;      new_var d:Array:i32:[2, 3] 
                    ;      new_var temp_5:ptr->i32 
                    ;      temp_5 = getelementptr d:Array:i32:[2, 3] [0, 0] 
    mv s3, zero
    li s1, 3
    li s2, 0
    mul s4,s1,s2
    add s3,s3,s4
    li s1, 1
    li s2, 0
    mul s4,s1,s2
    add s3,s3,s4
    slli s4,s4,2
    li s5, 40
    add s3,s3,s5
                    ;      store 1:i32 temp_5:ptr->Array:i32:[3] 
    li s2, 1
    lw    s1,88(sp)
    sd    s2,0(s1)
                    ;      mu d:42 
                    ;      d = chi d:42 
                    ;      new_var temp_6:ptr->i32 
                    ;      temp_6 = getelementptr d:Array:i32:[2, 3] [0, 1] 
    mv s3, zero
    li s1, 3
    li s2, 0
    mul s4,s1,s2
    add s3,s3,s4
    li s1, 1
    li s2, 1
    mul s4,s1,s2
    add s3,s3,s4
    slli s4,s4,2
    li s5, 40
    add s3,s3,s5
                    ;      store 2:i32 temp_6:ptr->Array:i32:[3] 
    li s2, 2
    lw    s1,80(sp)
    sd    s2,0(s1)
                    ;      mu d:48 
                    ;      d = chi d:48 
                    ;      new_var temp_7:ptr->i32 
                    ;      temp_7 = getelementptr d:Array:i32:[2, 3] [0, 2] 
    mv s3, zero
    li s1, 3
    li s2, 0
    mul s4,s1,s2
    add s3,s3,s4
    li s1, 1
    li s2, 2
    mul s4,s1,s2
    add s3,s3,s4
    slli s4,s4,2
    li s5, 40
    add s3,s3,s5
                    ;      store 3:i32 temp_7:ptr->Array:i32:[3] 
    li s2, 3
    lw    s1,72(sp)
    sd    s2,0(s1)
                    ;      mu d:54 
                    ;      d = chi d:54 
                    ;      new_var temp_8:ptr->i32 
                    ;      temp_8 = getelementptr d:Array:i32:[2, 3] [1, 2] 
    mv s3, zero
    li s1, 3
    li s2, 1
    mul s4,s1,s2
    add s3,s3,s4
    li s1, 1
    li s2, 2
    mul s4,s1,s2
    add s3,s3,s4
    slli s4,s4,2
    li s5, 40
    add s3,s3,s5
                    ;      store 6:i32 temp_8:ptr->Array:i32:[3] 
    li s2, 6
    lw    s1,64(sp)
    sd    s2,0(s1)
                    ;      mu d:60 
                    ;      d = chi d:60 
                    ;      new_var temp_9:ptr->i32 
                    ;      temp_9 = getelementptr d:Array:i32:[2, 3] [1, 1] 
    mv s3, zero
    li s1, 3
    li s2, 1
    mul s4,s1,s2
    add s3,s3,s4
    li s1, 1
    li s2, 1
    mul s4,s1,s2
    add s3,s3,s4
    slli s4,s4,2
    li s5, 40
    add s3,s3,s5
                    ;      store 5:i32 temp_9:ptr->Array:i32:[3] 
    li s2, 5
    lw    s1,56(sp)
    sd    s2,0(s1)
                    ;      mu d:66 
                    ;      d = chi d:66 
                    ;      new_var temp_10:ptr->i32 
                    ;      temp_10 = getelementptr d:Array:i32:[2, 3] [1, 0] 
    mv s3, zero
    li s1, 3
    li s2, 1
    mul s4,s1,s2
    add s3,s3,s4
    li s1, 1
    li s2, 0
    mul s4,s1,s2
    add s3,s3,s4
    slli s4,s4,2
    li s5, 40
    add s3,s3,s5
                    ;      store 4:i32 temp_10:ptr->Array:i32:[3] 
    li s2, 4
    lw    s1,48(sp)
    sd    s2,0(s1)
                    ;      mu d:72 
                    ;      d = chi d:72 
                    ;      new_var temp_11:ptr->i32 
                    ;      new_var temp_12:i32 
                    ;      temp_11 = getelementptr d:Array:i32:[2, 3] [1, 2] 
    mv s3, zero
    li s1, 3
    li s2, 1
    mul s4,s1,s2
    add s3,s3,s4
    li s1, 1
    li s2, 2
    mul s4,s1,s2
    add s3,s3,s4
    slli s4,s4,2
    li s5, 40
    add s3,s3,s5
                    ;      temp_12 = load temp_11:ptr->i32 
    lw    s1,16(sp)
    lw    s2,0(s1)
    sw    s2,8(sp)
                    ;      b = temp_12 
    lw    s3,8(sp)
    sw    s3,96(sp)
                    ;      ret 0 
    lw    ra,104(sp)
    lw    s0,112(sp)
    li a0, 0
    addi sp,sp,-112
    ret

