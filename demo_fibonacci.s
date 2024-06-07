.section
    .data
    .align 4
    .global m
                    ;      global Array:i32:[2, 2] m 
    .type m @object
m:
    .word 1
    .zero 4
    .word 1
    .word 2
.section
    .text
                    ;      Define Fibo [n] -> Fibo_ret 
    .global Fibo
    .type Fibo @function
Fibo:
                    ;mem layout:|ra_Fibo:8|s0_Fibo:8|n:4|temp_3:4|temp_4:4|temp_5:4|temp_6:4|temp_7:4|temp_8:1|temp_9:1|none:6
    addi sp,sp,-48
    sd    ra,48(sp)
    sd    s0,40(sp)
    sw    a0,32(sp)
                    ;      alloc i32 temp_3 
                    ;      alloc i32 temp_4 
                    ;      alloc i32 temp_5 
                    ;      alloc i32 temp_6 
                    ;      alloc i32 temp_7 
                    ;      alloc i1 temp_8 
                    ;      alloc i1 temp_9 
                    ;      label %1: 
%1:
                    ;      new_var temp_8:i1 
                    ;      temp_8 = icmp i1 Eq n, 0 
    sb    s3,8(sp)
                    ;      br i1 temp_8, label branch.true:, label branch.false: 
    lb    s1,8(sp)
    bnez s1, branch.false:
    j branch.false:
                    ;      label branch.true:: 
branch.true::
                    ;      ret 0 
    ld    ra,48(sp)
    ld    s0,40(sp)
    li a0, 0
    addi sp,sp,-48
    ret
                    ;      label branch.false:: 
branch.false::
                    ;      new_var temp_9:i1 
                    ;      temp_9 = icmp i1 Eq n, 1 
    sb    s3,7(sp)
                    ;      br i1 temp_9, label branch.true:, label branch.false: 
    lb    s1,7(sp)
    bnez s1, branch.false:
    j branch.false:
                    ;      label branch.true:: 
branch.true::
                    ;      ret 1 
    ld    ra,48(sp)
    ld    s0,40(sp)
    li a0, 1
    addi sp,sp,-48
    ret
                    ;      label branch.false:: 
branch.false::
                    ;      new_var temp_3:i32 
                    ;      temp_3 = Sub i32 n, 2 
    lw    s1,32(sp)
    li s2, 2
    sub s3,s1,s2
    sw    s3,28(sp)
                    ;      new_var temp_4:i32 
                    ;      temp_4 =  Call i32 Fibo(temp_3) 
    lw    a0,28(sp)
                    ;      new_var temp_5:i32 
                    ;      temp_5 = Sub i32 n, 1 
    lw    s1,32(sp)
    li s2, 1
    sub s3,s1,s2
    sw    s3,20(sp)
                    ;      new_var temp_6:i32 
                    ;      temp_6 =  Call i32 Fibo(temp_5) 
    lw    a0,20(sp)
                    ;      new_var temp_7:i32 
                    ;      temp_7 = Add i32 temp_6, temp_4 
    lw    s1,16(sp)
    lw    s2,24(sp)
    add s3,s1,s2
    sw    s3,12(sp)
                    ;      ret temp_7 
    ld    ra,48(sp)
    ld    s0,40(sp)
    lw    a0,12(sp)
    addi sp,sp,-48
    ret
                    ;      label %2: 
%2:
                    ;      label %3: 
%3:
                    ;      Define main [] -> main_ret 
    .global main
    .type main @function
main:
                    ;mem layout:|ra_main:8|s0_main:8|temp_10:4|a:4
    addi sp,sp,-24
    sd    ra,24(sp)
    sd    s0,16(sp)
                    ;      alloc i32 temp_10 
                    ;      alloc i32 a 
                    ;      label %0: 
%0:
                    ;      new_var temp_10:i32 
                    ;      temp_10 =  Call i32 Fibo(6) 
    li a0, 6
                    ;      a = temp_10 
    lw    s3,8(sp)
    sw    s3,4(sp)
                    ;      breakpoint bp1([a]) ! 
                    ;      ret 
    ld    ra,24(sp)
    ld    s0,16(sp)
    addi sp,sp,-24
    ret

