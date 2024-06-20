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
    .globl f1
    .type f1,@function
f1:
    li      a1, -65752
    li      a1, -65752
    add     sp,a1,sp
    sd      ra,65744(sp)
    sd      s0,65728(sp)
    li      a2, 65752
    li      a2, 65752
    add     s0,a2,sp
.L1_0:
    li      a3, 0
    li      a4, 1
    li      a5, 5
    mul     a6,a4,a5
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,a3
    li      a7, 4000
    sd      a7,0(a3)
    li      s1, 0
    mul     s2,a4,a7
    add     s1,s1,s2
    slli s1,s1,2
    add     s1,s1,s1
    li      s3, 3
    sd      s3,0(s1)
    li      s4, 0
    li      s5, 4095
    mul     s6,a4,s5
    add     s4,s4,s6
    slli s4,s4,2
    add     s4,s4,s4
    li      s7, 7
    sd      s7,0(s4)
    la      s8, a
    lw      s9,0(s8)
    li      s10, 0
    mul     s11,a4,s5
    add     s10,s10,s11
    slli s10,s10,2
    add     s10,s10,sp
    add     s10,s10,s10
    li      a1, 0
    mv      a2, a2
    add     a1,a1,a0
    slli a1,a1,3
    add     a1,a1,sp
    add     a1,a1,a1
    la      a4, a
    lw      a5,0(a4)
    li      a4, 0
    li      a5, 1
    li      a6, 2216
    mul     a7,a5,a6
    add     a4,a4,a7
    slli a4,a4,2
    add     a4,a4,sp
    add     a4,a4,a4
    mv      a5, a5
    li      a6, 9
    add     s2,a5,a6
    sd      s2,0(a1)
    la      a6, a
    lw      s3,0(a6)
    li      a6, 0
    li      s3, 1
    li      s5, 5
    mul     s6,s3,s5
    add     a6,a6,s6
    slli a6,a6,2
    add     a6,a6,sp
    add     a6,a6,a6
    la      s3, a
    lw      s5,0(s3)
    li      s3, 0
    li      s5, 1
    mv      s7, s7
    mul     s8,s5,s7
    add     s3,s3,s8
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    li      s5, 65744
    add     s5,sp,s5
    ld      ra,0(s5)
    li      s9, 65728
    add     s9,sp,s9
    ld      s0,0(s9)
    lw      a0,8(sp)
    sd      a0,65712(sp)
    li      a0, 65752
    li      a0, 65752
    add     sp,a0,sp
    ret
    .globl main
    .type main,@function
main:
    li      a0, -33024
    li      a0, -33024
    add     sp,a0,sp
    sd      ra,33016(sp)
    sd      s0,33000(sp)
    li      a0, 33024
    li      a0, 33024
    add     s0,a0,sp
.L0_0:
    li      a0, 0
    sd      a1,49240(sp)
    li      a1, 1024
    sw      a2,49256(sp)
    li      a2, 0
    sd      a3,65696(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    li      a1, 1
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 2
    sd      a1,0(a0)
    li      a1, 0
    li      a2, 1024
    sd      a0,32984(sp)
    li      a0, 0
    add     a1,a1,a3
    li      a0, 1
    li      a2, 3
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 4
    sd      a0,0(a1)
    li      a0, 0
    li      a2, 1024
    sd      a1,32968(sp)
    li      a1, 0
    add     a0,a0,a3
    li      a1, 1
    li      a2, 2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 3
    sd      a1,0(a0)
    li      a1, 0
    li      a2, 1024
    sd      a0,32952(sp)
    li      a0, 0
    add     a1,a1,a3
    li      a0, 1
    li      a2, 5
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 6
    sd      a0,0(a1)
    li      a0, 0
    li      a2, 1024
    sd      a1,32936(sp)
    li      a1, 0
    add     a0,a0,a3
    li      a1, 1
    li      a2, 4
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 5
    sd      a1,0(a0)
    li      a1, 0
    li      a2, 1024
    sd      a0,32920(sp)
    li      a0, 0
    add     a1,a1,a3
    li      a0, 1
    li      a2, 0
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sd      a0,0(a1)
    li      a0, 0
    li      a2, 4
    sd      a1,32904(sp)
    li      a1, 0
    sw      a3,32896(sp)
    mul     a3,a2,a1
    add     a0,a0,a3
    li      a1, 1
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      a1,0(a0)
    li      a1, 0
    li      a2, 4
    sd      a0,16504(sp)
    li      a0, 0
    add     a1,a1,a3
    li      a0, 1
    li      a2, 1
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 2
    sd      a0,0(a1)
    li      a0, 0
    li      a2, 4
    sd      a1,16488(sp)
    li      a1, 0
    add     a0,a0,a3
    li      a1, 1
    li      a2, 3
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 4
    sd      a1,0(a0)
    li      a1, 0
    li      a2, 4
    sd      a0,16472(sp)
    li      a0, 0
    add     a1,a1,a3
    li      a0, 1
    li      a2, 2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      a0, 3
    sd      a0,0(a1)
    li      a0, 0
    li      a2, 4
    sd      a1,16456(sp)
    li      a1, 0
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    sd      s1,65680(sp)
    sw      s2,32824(sp)
    sd      s3,16(sp)
    sd      s4,65664(sp)
    sd      s5,65744(sp)
    sw      s6,32816(sp)
    sw      s7,16416(sp)
    sw      s8,16408(sp)
    sd      s9,65728(sp)
    sd      s10,49264(sp)
    sw      s11,65656(sp)
    sd      a0,56(sp)
    mv      a0, a0
    call    f1
    sw      a0,28(sp)
    sw      a0,28(sp)
    mv      a0, a0
    call    putint
    li      a0, 10
    call    putch
    li      a0, 0
    li      s1, 2
    add     a0,a0,a3
    li      s2, 1
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    add     a0,a0,a0
    li      s3, 33016
    add     s3,sp,s3
    ld      ra,0(s3)
    li      s4, 33000
    add     s4,sp,s4
    ld      s0,0(s4)
    lw      a0,8(sp)
    li      s5, 33024
    li      s5, 33024
    add     sp,s5,sp
    ret
.section        .data
    .align 4
    .globl a
    .type a,@object
a:
    .zero 16384
