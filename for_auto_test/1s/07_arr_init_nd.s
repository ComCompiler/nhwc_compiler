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


.section ___func
    .text
    .align 4
    .globl main
    .type main,@function
main:
    addi    sp,sp,-1032
    sd      ra,1024(sp)
    sd      s0,1016(sp)
    addi    s0,sp,1032
.L0_0:
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,884
    sd      a0,944(sp)
    ld      a0,944(sp)
    li      a1, 0
    li      a2, 60
    call    memset
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,692
    sd      a0,872(sp)
    ld      a0,872(sp)
    li      a1, 0
    li      a2, 60
    call    memset
    li      a0, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    mul     a6,a4,a5
    add     a0,a0,a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,692
    li      a7, 14
    sw      a7,0(a0)
    li      s1, 0
    mul     s2,a1,a2
    add     s1,s1,s2
    mul     s4,a4,s3
    add     s1,s1,s4
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,692
    li      s5, 15
    sw      s5,0(s1)
    li      s6, 0
    mul     s8,a1,s7
    add     s6,s6,s8
    mul     s9,a4,s7
    add     s6,s6,s9
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,692
    sw      a4,0(s6)
    li      s10, 0
    mul     a2,a1,s11
    add     s10,s10,a2
    mul     a1,a4,s7
    add     s10,s10,a1
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,692
    li      a1, 10
    sw      a1,0(s10)
    li      a1, 0
    mul     a3,s11,a2
    add     a1,a1,a3
    mul     a2,a4,s3
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,692
    li      a2, 12
    sw      a2,0(a1)
    li      a2, 0
    mul     a3,s11,s3
    add     a2,a2,a3
    mul     a3,a4,s3
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,692
    li      a3, 9
    sw      a3,0(a2)
    li      a3, 0
    mul     a5,s11,a4
    add     a3,a3,a5
    mul     a6,a4,a5
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,692
    li      a4, 11
    sw      a4,0(a3)
    li      a4, 0
    mul     a5,s11,s3
    add     a4,a4,a5
    mul     a6,a5,s7
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,692
    li      a5, 7
    sw      a5,0(a4)
    li      a5, 0
    mul     a7,s11,a6
    add     a5,a5,a7
    mul     a7,a6,s7
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,692
    li      a6, 13
    sw      a6,0(a5)
    li      a6, 0
    mul     s2,s11,a7
    add     a6,a6,s2
    mul     s2,a7,s7
    add     a6,a6,s2
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,692
    li      a7, 4
    sw      a7,0(a6)
    li      a7, 0
    mul     s3,s11,s2
    add     a7,a7,s3
    mul     s4,s2,s3
    add     a7,a7,s4
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,692
    li      s2, 6
    sw      s2,0(a7)
    li      s2, 0
    mul     s3,s11,s7
    add     s2,s2,s3
    mul     s5,s3,s4
    add     s2,s2,s5
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,692
    li      s3, 2
    sw      s3,0(s2)
    li      s3, 0
    mul     s4,s11,s7
    add     s3,s3,s4
    mul     s7,s4,s5
    add     s3,s3,s7
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,692
    sw      s11,0(s3)
    li      s4, 0
    mul     s7,s11,s5
    add     s4,s4,s7
    mul     s8,s5,s7
    add     s4,s4,s8
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,692
    li      s5, 8
    sw      s5,0(s4)
    li      s5, 0
    mul     s8,s11,s7
    add     s5,s5,s8
    mul     s9,s7,s8
    add     s5,s5,s9
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,692
    li      s7, 5
    sw      s7,0(s5)
    li      s7, 0
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,500
    sd      s1,856(sp)
    sd      s2,776(sp)
    sd      s3,768(sp)
    sd      s4,760(sp)
    sd      s5,752(sp)
    sd      s6,848(sp)
    sd      s7,680(sp)
    sd      s10,840(sp)
    sd      a0,864(sp)
    sd      a1,832(sp)
    sd      a2,824(sp)
    sd      a3,816(sp)
    sd      a4,808(sp)
    sd      a5,800(sp)
    sd      a6,792(sp)
    sd      a7,784(sp)
    ld      a0,680(sp)
    li      a1, 0
    li      a2, 60
    call    memset
    li      a0, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    mul     a5,a2,a4
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,500
    li      a6, 5
    sw      a6,0(a0)
    li      a7, 0
    mul     s2,a1,s1
    add     a7,a7,s2
    mul     s3,a4,a2
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,500
    li      s4, 8
    sw      s4,0(a7)
    li      s5, 0
    mul     s7,a1,s6
    add     s5,s5,s7
    mul     s9,a4,s8
    add     s5,s5,s9
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,500
    li      s10, 10
    sw      s10,0(s5)
    li      s11, 0
    mul     a2,s6,a1
    add     s11,s11,a2
    mul     a2,a4,a1
    add     s11,s11,a2
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,500
    li      a1, 11
    sw      a1,0(s11)
    li      a1, 0
    mul     a3,s6,a2
    add     a1,a1,a3
    mul     a2,a4,s1
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,500
    li      a2, 15
    sw      a2,0(a1)
    li      a2, 0
    mul     a3,s6,s8
    add     a2,a2,a3
    mul     a3,a4,s1
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,500
    sw      s6,0(a2)
    li      a3, 0
    mul     a5,s6,a4
    add     a3,a3,a5
    mul     a5,a4,s8
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,500
    li      a4, 13
    sw      a4,0(a3)
    li      a4, 0
    mul     a6,s6,a5
    add     a4,a4,a6
    mul     a6,a5,s1
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,500
    li      a5, 12
    sw      a5,0(a4)
    li      a5, 0
    mul     a6,s6,s8
    add     a5,a5,a6
    mul     s1,a6,s8
    add     a5,a5,s1
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,500
    sw      a6,0(a5)
    li      a6, 0
    mul     s2,s6,s1
    add     a6,a6,s2
    mul     s3,s1,s2
    add     a6,a6,s3
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,500
    li      s1, 9
    sw      s1,0(a6)
    li      s1, 0
    mul     s2,s6,s8
    add     s1,s1,s2
    mul     s4,s2,s3
    add     s1,s1,s4
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,500
    li      s2, 2
    sw      s2,0(s1)
    li      s2, 0
    mul     s4,s6,s3
    add     s2,s2,s4
    mul     s6,s3,s4
    add     s2,s2,s6
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,500
    li      s3, 14
    sw      s3,0(s2)
    li      s3, 0
    mul     s7,s4,s6
    add     s3,s3,s7
    mul     s4,s6,s8
    add     s3,s3,s4
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,500
    li      s4, 4
    sw      s4,0(s3)
    li      s4, 0
    mul     s8,s6,s7
    add     s4,s4,s8
    mul     s8,s6,s7
    add     s4,s4,s8
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,500
    li      s6, 7
    sw      s6,0(s4)
    li      s6, 0
    mul     s9,s7,s8
    add     s6,s6,s9
    mul     s9,s8,s7
    add     s6,s6,s9
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,500
    li      s7, 6
    sw      s7,0(s6)
    li      s7, 0
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,308
    sd      s1,592(sp)
    sd      s2,584(sp)
    sd      s3,576(sp)
    sd      s4,568(sp)
    sd      s5,656(sp)
    sd      s6,560(sp)
    sd      s7,488(sp)
    sd      s11,648(sp)
    sd      a0,672(sp)
    sd      a1,640(sp)
    sd      a2,632(sp)
    sd      a3,624(sp)
    sd      a4,616(sp)
    sd      a5,608(sp)
    sd      a6,600(sp)
    sd      a7,664(sp)
    ld      a0,488(sp)
    li      a1, 0
    li      a2, 60
    call    memset
    li      a0, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    mul     a6,a4,a5
    add     a0,a0,a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,308
    li      a7, 11
    sw      a7,0(a0)
    li      s1, 0
    mul     s3,a2,s2
    add     s1,s1,s3
    mul     s4,a4,a5
    add     s1,s1,s4
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,308
    li      s5, 2
    sw      s5,0(s1)
    li      s6, 0
    mul     s8,a2,s7
    add     s6,s6,s8
    mul     s9,a4,s2
    add     s6,s6,s9
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,308
    li      s10, 13
    sw      s10,0(s6)
    li      s11, 0
    mul     a1,a2,a4
    add     s11,s11,a1
    mul     a1,a4,s5
    add     s11,s11,a1
    slli s11,s11,2
    add     s11,s11,sp
    addi    s11,s11,308
    li      a1, 6
    sw      a1,0(s11)
    li      a1, 0
    mul     a3,a2,s2
    add     a1,a1,a3
    mul     a2,a4,s2
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,308
    sw      a4,0(a1)
    li      a2, 0
    mul     a4,a3,s5
    add     a2,a2,a4
    mul     a3,a5,s5
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,308
    li      a3, 9
    sw      a3,0(a2)
    li      a3, 0
    mul     a5,a4,s5
    add     a3,a3,a5
    mul     a5,a4,s2
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,308
    li      a4, 7
    sw      a4,0(a3)
    li      a4, 0
    mul     a6,a5,s5
    add     a4,a4,a6
    mul     a7,a5,a6
    add     a4,a4,a7
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,308
    li      a5, 8
    sw      a5,0(a4)
    li      a5, 0
    mul     a7,a6,s7
    add     a5,a5,a7
    mul     s2,a6,a7
    add     a5,a5,s2
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,308
    li      a6, 14
    sw      a6,0(a5)
    li      a6, 0
    mul     s3,a7,s2
    add     a6,a6,s3
    mul     s2,a7,s5
    add     a6,a6,s2
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,308
    li      a7, 3
    sw      a7,0(a6)
    li      a7, 0
    mul     s4,s2,s3
    add     a7,a7,s4
    mul     s4,s3,s2
    add     a7,a7,s4
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,308
    sw      s7,0(a7)
    li      s2, 0
    mul     s5,s3,s4
    add     s2,s2,s5
    mul     s5,s3,s4
    add     s2,s2,s5
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,308
    li      s3, 10
    sw      s3,0(s2)
    li      s3, 0
    mul     s7,s4,s5
    add     s3,s3,s7
    mul     s7,s4,s5
    add     s3,s3,s7
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,308
    li      s4, 12
    sw      s4,0(s3)
    li      s4, 0
    mul     s8,s5,s7
    add     s4,s4,s8
    mul     s8,s7,s5
    add     s4,s4,s8
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,308
    li      s5, 5
    sw      s5,0(s4)
    li      s5, 0
    mul     s9,s7,s8
    add     s5,s5,s9
    mul     s9,s7,s8
    add     s5,s5,s9
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,308
    li      s7, 15
    sw      s7,0(s5)
    li      s7, 0
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,156
    sd      s1,472(sp)
    sd      s2,392(sp)
    sd      s3,384(sp)
    sd      s4,376(sp)
    sd      s5,368(sp)
    sd      s6,464(sp)
    sd      s7,280(sp)
    sd      s11,456(sp)
    sd      a0,480(sp)
    sd      a1,448(sp)
    sd      a2,440(sp)
    sd      a3,432(sp)
    sd      a4,424(sp)
    sd      a5,416(sp)
    sd      a6,408(sp)
    sd      a7,400(sp)
    ld      a0,280(sp)
    li      a1, 0
    li      a2, 60
    call    memset
    li      a0, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    mul     a5,a2,a4
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,156
    li      a6, 7
    sw      a6,0(a0)
    li      a7, 0
    mul     s2,a1,s1
    add     a7,a7,s2
    mul     s3,a4,s1
    add     a7,a7,s3
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,156
    sw      a4,0(a7)
    li      s4, 0
    mul     s6,a1,s5
    add     s4,s4,s6
    mul     s7,a4,s1
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,156
    li      s8, 11
    sw      s8,0(s4)
    li      s9, 0
    mul     s10,a1,a4
    add     s9,s9,s10
    mul     s11,a4,s5
    add     s9,s9,s11
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,156
    li      a1, 10
    sw      a1,0(s9)
    li      a1, 0
    mul     a3,a2,s1
    add     a1,a1,a3
    mul     a2,a4,s5
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,156
    li      a2, 3
    sw      a2,0(a1)
    li      a2, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    mul     a3,a4,s1
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,156
    li      a3, 4
    sw      a3,0(a2)
    li      a3, 0
    mul     a5,a4,s1
    add     a3,a3,a5
    mul     a6,a4,a5
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,156
    sw      s5,0(a3)
    li      a4, 0
    mul     a6,a5,s5
    add     a4,a4,a6
    mul     s1,a5,a6
    add     a4,a4,s1
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,156
    li      a5, 12
    sw      a5,0(a4)
    li      a5, 0
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,0
    sd      s4,256(sp)
    sd      s9,248(sp)
    sd      a0,272(sp)
    sd      a1,240(sp)
    sd      a2,232(sp)
    sd      a3,224(sp)
    sd      a4,216(sp)
    sd      a5,136(sp)
    sd      a7,264(sp)
    ld      a0,136(sp)
    li      a1, 0
    li      a2, 96
    call    memset
    li      a0, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    mul     a5,a4,a2
    add     a0,a0,a5
    mul     a7,a6,a2
    add     a0,a0,a7
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,0
    sw      a6,0(a0)
    li      s1, 0
    mul     s2,a1,a2
    add     s1,s1,s2
    mul     s3,a4,a2
    add     s1,s1,s3
    mul     s5,a6,s4
    add     s1,s1,s5
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,0
    li      s6, 2
    sw      s6,0(s1)
    li      s7, 0
    mul     s8,a1,a2
    add     s7,s7,s8
    mul     s9,a4,a2
    add     s7,s7,s9
    mul     s11,s4,s10
    add     s7,s7,s11
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,0
    sw      a4,0(s7)
    li      a1, 0
    mul     a4,a2,a3
    add     a1,a1,a4
    mul     a3,a2,s4
    add     a1,a1,a3
    mul     a3,s4,a2
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,0
    li      a2, 5
    sw      a2,0(a1)
    li      a2, 0
    mul     a5,a3,a4
    add     a2,a2,a5
    mul     a5,a3,a4
    add     a2,a2,a5
    mul     a3,s4,s6
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,0
    sw      s10,0(a2)
    ld      ra,1024(sp)
    ld      s0,1016(sp)
    sd      a0,128(sp)
    li      a0, 4
    addi    sp,sp,1032
    ret
