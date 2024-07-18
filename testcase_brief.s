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
    addi    sp,sp,-1112
    sd      ra,1104(sp)
    sd      s0,1096(sp)
    addi    s0,sp,1112
.L0_0:
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,744
    sd      a0,1064(sp)
    ld      a0,1064(sp)
    li      a1, 0
    li      a2, 80
    call    memset
    li      a0, 0
    li      a1, 1
    li      a2, 23
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,744
    li      a4, 7
    sw      a4,0(a0)
    li      a5, 0
    li      a6, 24
    mul     a7,a1,a6
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,744
    li      s1, 8
    sw      s1,0(a5)
    li      s2, 0
    li      s3, 3
    mul     s4,a1,s3
    add     s2,s2,s4
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,744
    li      s5, 4
    sw      s5,0(s2)
    li      s6, 0
    li      s7, 19
    mul     s8,a1,s7
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,744
    li      a1, 5
    sw      a1,0(s6)
    li      a1, 0
    li      s7, 1
    li      s9, 27
    mul     s10,s7,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,744
    sd      a1,1024(sp)
    ld      a1,1024(sp)
    li      s7, 9
    sw      s7,0(a1)
    sd      a1,1024(sp)
    li      a1, 0
    li      s7, 1
    li      s9, 18
    mul     s10,s7,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,744
    sd      a1,1016(sp)
    ld      a1,1016(sp)
    li      s7, 5
    sw      s7,0(a1)
    sd      a1,1016(sp)
    li      a1, 0
    li      s7, 1
    li      s9, 22
    mul     s10,s7,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,744
    sd      a1,1008(sp)
    ld      a1,1008(sp)
    sw      a4,0(a1)
    li      a4, 0
    li      s7, 1
    li      s9, 28
    mul     s10,s7,s9
    add     a4,a4,s10
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,744
    sd      a4,1000(sp)
    ld      a4,1000(sp)
    li      s7, 0
    sw      s7,0(a4)
    sd      a4,1000(sp)
    li      a4, 0
    li      s7, 1
    li      s9, 14
    mul     s10,s7,s9
    add     a4,a4,s10
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,744
    sd      a4,992(sp)
    ld      a4,992(sp)
    sw      s3,0(a4)
    li      s3, 0
    li      s7, 1
    mul     s9,s7,s5
    add     s3,s3,s9
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,744
    li      s5, 5
    sw      s5,0(s3)
    li      s5, 0
    li      s7, 1
    mul     s9,s7,s1
    add     s5,s5,s9
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,744
    li      s1, 9
    sw      s1,0(s5)
    li      s1, 0
    li      s7, 1
    li      s9, 16
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,968(sp)
    ld      s1,968(sp)
    li      s7, 4
    sw      s7,0(s1)
    sd      s1,968(sp)
    li      s1, 0
    li      s7, 1
    li      s9, 25
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,960(sp)
    ld      s1,960(sp)
    li      s7, 8
    sw      s7,0(s1)
    sd      s1,960(sp)
    li      s1, 0
    li      s7, 1
    li      s9, 17
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,952(sp)
    ld      s1,952(sp)
    li      s7, 4
    sw      s7,0(s1)
    sd      s1,952(sp)
    li      s1, 0
    li      s7, 1
    li      s9, 1
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,944(sp)
    ld      s1,944(sp)
    li      s7, 2
    sw      s7,0(s1)
    sd      s1,944(sp)
    li      s1, 0
    li      s7, 1
    li      s9, 10
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,936(sp)
    ld      s1,936(sp)
    li      s7, 1
    sw      s7,0(s1)
    sd      s1,936(sp)
    li      s1, 0
    li      s7, 1
    li      s9, 7
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,928(sp)
    ld      s1,928(sp)
    li      s7, 8
    sw      s7,0(s1)
    sd      s1,928(sp)
    li      s1, 0
    li      s7, 1
    li      s9, 13
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,920(sp)
    ld      s1,920(sp)
    li      s7, 2
    sw      s7,0(s1)
    sd      s1,920(sp)
    li      s1, 0
    li      s7, 1
    li      s9, 11
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,912(sp)
    ld      s1,912(sp)
    li      s7, 1
    sw      s7,0(s1)
    sd      s1,912(sp)
    li      s1, 0
    li      s7, 1
    li      s9, 6
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,904(sp)
    ld      s1,904(sp)
    li      s7, 7
    sw      s7,0(s1)
    sd      s1,904(sp)
    li      s1, 0
    li      s7, 1
    li      s9, 12
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,896(sp)
    ld      s1,896(sp)
    li      s7, 2
    sw      s7,0(s1)
    sd      s1,896(sp)
    li      s1, 0
    li      s7, 1
    li      s9, 26
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,888(sp)
    ld      s1,888(sp)
    li      s7, 9
    sw      s7,0(s1)
    sd      s1,888(sp)
    li      s1, 0
    li      s7, 1
    li      s9, 0
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,880(sp)
    ld      s1,880(sp)
    li      s7, 1
    sw      s7,0(s1)
    sd      s1,880(sp)
    li      s1, 0
    li      s7, 1
    li      s9, 15
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,872(sp)
    ld      s1,872(sp)
    li      s7, 3
    sw      s7,0(s1)
    sd      s1,872(sp)
    li      s1, 0
    li      s7, 1
    li      s9, 2
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,864(sp)
    ld      s1,864(sp)
    li      s7, 3
    sw      s7,0(s1)
    sd      s1,864(sp)
    li      s1, 0
    li      s7, 1
    li      s9, 9
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,856(sp)
    ld      s1,856(sp)
    li      s7, 0
    sw      s7,0(s1)
    sd      s1,856(sp)
    li      s1, 0
    li      s7, 1
    li      s9, 20
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,848(sp)
    ld      s1,848(sp)
    li      s7, 6
    sw      s7,0(s1)
    sd      s1,848(sp)
    li      s1, 0
    li      s7, 1
    li      s9, 21
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,840(sp)
    ld      s1,840(sp)
    li      s7, 6
    sw      s7,0(s1)
    sd      s1,840(sp)
    li      s1, 0
    li      s7, 1
    li      s9, 29
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,832(sp)
    ld      s1,832(sp)
    li      s7, 0
    sw      s7,0(s1)
    sd      s1,832(sp)
    li      s1, 0
    li      s7, 1
    li      s9, 5
    mul     s10,s7,s9
    add     s1,s1,s10
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,744
    sd      s1,824(sp)
    ld      s1,824(sp)
    li      s7, 6
    sw      s7,0(s1)
    sd      s1,824(sp)
    li      s1, 0
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,416
    sd      s1,736(sp)
    sd      s2,1040(sp)
    sd      s3,984(sp)
    sd      s5,976(sp)
    sd      s6,1032(sp)
    sd      a0,1056(sp)
    sd      a1,1008(sp)
    sd      a4,992(sp)
    sd      a5,1048(sp)
    ld      a0,736(sp)
    li      a1, 0
    li      a2, 80
    call    memset
    li      a0, 0
    li      a1, 1
    li      a2, 3
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,416
    li      a4, 2
    sw      a4,0(a0)
    li      a5, 0
    li      a6, 28
    mul     a7,a1,a6
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,416
    sw      a4,0(a5)
    li      s1, 0
    li      s2, 6
    mul     s3,a1,s2
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,416
    li      s4, 7
    sw      s4,0(s1)
    li      s5, 0
    li      s6, 14
    mul     s7,a1,s6
    add     s5,s5,s7
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,416
    li      a1, 8
    sw      a1,0(s5)
    li      a1, 0
    li      s8, 1
    li      s9, 29
    mul     s10,s8,s9
    add     a1,a1,s10
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,416
    sd      a1,696(sp)
    ld      a1,696(sp)
    sw      a4,0(a1)
    li      a4, 0
    li      s8, 1
    li      s9, 1
    mul     s10,s8,s9
    add     a4,a4,s10
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,416
    sd      a4,688(sp)
    ld      a4,688(sp)
    sw      a2,0(a4)
    li      a2, 0
    li      s8, 1
    li      s9, 20
    mul     s10,s8,s9
    add     a2,a2,s10
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,416
    sd      a2,680(sp)
    ld      a2,680(sp)
    li      s8, 3
    sw      s8,0(a2)
    sd      a2,680(sp)
    li      a2, 0
    li      s8, 1
    li      s9, 22
    mul     s10,s8,s9
    add     a2,a2,s10
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,416
    sd      a2,672(sp)
    ld      a2,672(sp)
    li      s8, 2
    sw      s8,0(a2)
    sd      a2,672(sp)
    li      a2, 0
    li      s8, 1
    li      s9, 18
    mul     s10,s8,s9
    add     a2,a2,s10
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,416
    sd      a2,664(sp)
    ld      a2,664(sp)
    li      s8, 4
    sw      s8,0(a2)
    sd      a2,664(sp)
    li      a2, 0
    li      s8, 1
    li      s9, 16
    mul     s10,s8,s9
    add     a2,a2,s10
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,416
    sd      a2,656(sp)
    ld      a2,656(sp)
    sw      s4,0(a2)
    li      s4, 0
    li      s8, 1
    li      s9, 15
    mul     s10,s8,s9
    add     s4,s4,s10
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,416
    sd      s4,648(sp)
    ld      s4,648(sp)
    li      s8, 7
    sw      s8,0(s4)
    sd      s4,648(sp)
    li      s4, 0
    li      s8, 1
    li      s9, 9
    mul     s10,s8,s9
    add     s4,s4,s10
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,416
    sd      s4,640(sp)
    ld      s4,640(sp)
    li      s8, 9
    sw      s8,0(s4)
    sd      s4,640(sp)
    li      s4, 0
    li      s8, 1
    li      s9, 19
    mul     s10,s8,s9
    add     s4,s4,s10
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,416
    sd      s4,632(sp)
    ld      s4,632(sp)
    li      s8, 4
    sw      s8,0(s4)
    sd      s4,632(sp)
    li      s4, 0
    li      s8, 1
    li      s9, 21
    mul     s10,s8,s9
    add     s4,s4,s10
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,416
    sd      s4,624(sp)
    ld      s4,624(sp)
    li      s8, 3
    sw      s8,0(s4)
    sd      s4,624(sp)
    li      s4, 0
    li      s8, 1
    li      s9, 13
    mul     s10,s8,s9
    add     s4,s4,s10
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,416
    sd      s4,616(sp)
    ld      s4,616(sp)
    li      s8, 9
    sw      s8,0(s4)
    sd      s4,616(sp)
    li      s4, 0
    li      s8, 1
    li      s9, 2
    mul     s10,s8,s9
    add     s4,s4,s10
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,416
    sd      s4,608(sp)
    ld      s4,608(sp)
    li      s8, 4
    sw      s8,0(s4)
    sd      s4,608(sp)
    li      s4, 0
    li      s8, 1
    li      s9, 27
    mul     s10,s8,s9
    add     s4,s4,s10
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,416
    sd      s4,600(sp)
    ld      s4,600(sp)
    li      s8, 2
    sw      s8,0(s4)
    sd      s4,600(sp)
    li      s4, 0
    li      s8, 1
    li      s9, 12
    mul     s10,s8,s9
    add     s4,s4,s10
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,416
    sd      s4,592(sp)
    ld      s4,592(sp)
    li      s8, 9
    sw      s8,0(s4)
    sd      s4,592(sp)
    li      s4, 0
    li      s8, 1
    li      s9, 24
    mul     s10,s8,s9
    add     s4,s4,s10
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,416
    sd      s4,584(sp)
    ld      s4,584(sp)
    li      s8, 1
    sw      s8,0(s4)
    sd      s4,584(sp)
    li      s4, 0
    li      s8, 1
    li      s9, 8
    mul     s10,s8,s9
    add     s4,s4,s10
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,416
    sd      s4,576(sp)
    ld      s4,576(sp)
    li      s8, 9
    sw      s8,0(s4)
    sd      s4,576(sp)
    li      s4, 0
    li      s8, 1
    li      s9, 17
    mul     s10,s8,s9
    add     s4,s4,s10
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,416
    sd      s4,568(sp)
    ld      s4,568(sp)
    sw      s2,0(s4)
    li      s2, 0
    li      s8, 1
    li      s9, 23
    mul     s10,s8,s9
    add     s2,s2,s10
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,416
    sd      s2,560(sp)
    ld      s2,560(sp)
    li      s8, 2
    sw      s8,0(s2)
    sd      s2,560(sp)
    li      s2, 0
    li      s8, 1
    li      s9, 25
    mul     s10,s8,s9
    add     s2,s2,s10
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,416
    sd      s2,552(sp)
    ld      s2,552(sp)
    li      s8, 1
    sw      s8,0(s2)
    sd      s2,552(sp)
    li      s2, 0
    li      s8, 1
    li      s9, 0
    mul     s10,s8,s9
    add     s2,s2,s10
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,416
    sd      s2,544(sp)
    ld      s2,544(sp)
    li      s8, 2
    sw      s8,0(s2)
    sd      s2,544(sp)
    li      s2, 0
    li      s8, 1
    li      s9, 7
    mul     s10,s8,s9
    add     s2,s2,s10
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,416
    sd      s2,536(sp)
    ld      s2,536(sp)
    li      s8, 9
    sw      s8,0(s2)
    sd      s2,536(sp)
    li      s2, 0
    li      s8, 1
    li      s9, 5
    mul     s10,s8,s9
    add     s2,s2,s10
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,416
    sd      s2,528(sp)
    ld      s2,528(sp)
    li      s8, 5
    sw      s8,0(s2)
    sd      s2,528(sp)
    li      s2, 0
    li      s8, 1
    li      s9, 4
    mul     s10,s8,s9
    add     s2,s2,s10
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,416
    sd      s2,520(sp)
    ld      s2,520(sp)
    li      s8, 2
    sw      s8,0(s2)
    sd      s2,520(sp)
    li      s2, 0
    li      s8, 1
    li      s9, 10
    mul     s10,s8,s9
    add     s2,s2,s10
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,416
    sd      s2,512(sp)
    ld      s2,512(sp)
    li      s8, 0
    sw      s8,0(s2)
    sd      s2,512(sp)
    li      s2, 0
    li      s8, 1
    li      s9, 11
    mul     s10,s8,s9
    add     s2,s2,s10
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,416
    sd      s2,504(sp)
    ld      s2,504(sp)
    li      s8, 1
    sw      s8,0(s2)
    sd      s2,504(sp)
    li      s2, 0
    li      s8, 1
    li      s9, 26
    mul     s10,s8,s9
    add     s2,s2,s10
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,416
    sd      s2,496(sp)
    ld      s2,496(sp)
    li      s8, 2
    sw      s8,0(s2)
    sd      s2,496(sp)
    li      s2, 20
    sw      s2,412(sp)
    li      s2, 20
    sw      s2,408(sp)
    li      s2, 0
    slli s2,s2,2
    add     s2,s2,sp
    addi    s2,s2,240
    sd      s2,400(sp)
    sd      s1,712(sp)
    sd      s4,568(sp)
    sd      s5,704(sp)
    sd      a0,728(sp)
    sd      a1,696(sp)
    sd      a2,656(sp)
    sd      a4,688(sp)
    sd      a5,720(sp)
    ld      a0,400(sp)
    li      a1, 0
    li      a2, 160
    call    memset
    lw      a0,412(sp)
    lw      a1,408(sp)
    add     a2,a0,a1
    li      a3, 1
    sub     a4,a2,a3
    mv      a5, a4
    li      a6, 0
    j       .while.head_28
.while.head_28:
    slt     a3,a5,a6
    xori    a3,a3,1
    bnez    a3, .while.body_28
    j       .while.exit_28
.while.body_28:
    li      a7, 0
    li      s1, 1
    mul     s2,s1,a6
    add     a7,a7,s2
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,240
    li      s3, 0
    sw      s3,0(a7)
    add     s4,a6,s1
    mv      a6, s4
    sb      a3,231(sp)
    sd      a7,216(sp)
    sw      s4,212(sp)
    j       .while.head_28
.while.exit_28:
    li      a7, 0
    li      s1, 1
    sub     s2,a1,s1
    mv      a6, s2
    j       .while.head_35
.while.head_35:
    li      s1, -1
    slt     s3,s1,a6
    bnez    s3, .while.body_35
    j       .while.exit_35
.while.body_35:
    li      s1, 0
    li      s4, 1
    mul     s5,s4,a6
    sw      a6,1092(sp)
    add     s1,s1,s5
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,416
    lw      a6,0(s1)
    sw      a6,188(sp)
    lw      a6,188(sp)
    mv      s4, a6
    sw      a6,188(sp)
    sw      s4,1084(sp)
    li      a6, 1
    sub     s4,a0,a6
    sw      a0,412(sp)
    mv      a0, s4
    sw      s4,184(sp)
    j       .while.head_40
.while.head_40:
    li      a6, -1
    slt     s4,a6,a0
    sw      a0,1088(sp)
    bnez    s4, .while.body_40
    j       .while.exit_40
.while.body_40:
    li      a0, 0
    li      a6, 1
    lw      s5,1088(sp)
    mul     s6,a6,s5
    sw      s5,1088(sp)
    add     a0,a0,s6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,744
    sd      a0,168(sp)
    ld      a0,168(sp)
    lw      a6,0(a0)
    sw      a6,164(sp)
    sd      a0,168(sp)
    lw      a0,1084(sp)
    lw      a6,164(sp)
    mul     s5,a0,a6
    sw      a0,1084(sp)
    sw      a6,164(sp)
    sw      s5,160(sp)
    li      a0, 0
    li      a6, 1
    mul     s5,a6,a5
    sw      a5,1080(sp)
    add     a0,a0,s5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,240
    lw      a5,0(a0)
    sw      a5,148(sp)
    lw      a5,148(sp)
    lw      a6,160(sp)
    add     s5,a5,a6
    sw      a5,148(sp)
    sw      a6,160(sp)
    sw      s5,144(sp)
    lw      a5,144(sp)
    mv      a7, a5
    sw      a5,144(sp)
    j       .L1_0
.L1_0:
    li      a5, 10
    slt     a6,a7,a5
    xori    a6,a6,1
    sw      a7,1076(sp)
    bnez    a6, .branch_true_44
    j       .branch_false_44
.branch_true_44:
    li      a5, 0
    li      a7, 1
    lw      s5,1080(sp)
    mul     s6,a7,s5
    sw      s5,1080(sp)
    add     a5,a5,s6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,240
    sd      a5,128(sp)
    ld      a5,128(sp)
    lw      a7,1076(sp)
    sw      a7,0(a5)
    sw      a7,1076(sp)
    sd      a5,128(sp)
    lw      a5,1080(sp)
    li      a7, 1
    sub     s5,a5,a7
    sw      a5,1080(sp)
    sw      s5,124(sp)
    li      a5, 0
    li      a7, 1
    lw      s5,124(sp)
    mul     s6,a7,s5
    sw      s5,124(sp)
    add     a5,a5,s6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,240
    sd      a5,112(sp)
    lw      a5,1076(sp)
    li      a7, 10
    div     s5,a5,a7
    sw      a5,1076(sp)
    sw      s5,108(sp)
    lw      a5,1080(sp)
    li      a7, 1
    sub     s5,a5,a7
    sw      a5,1080(sp)
    sw      s5,104(sp)
    li      a5, 0
    li      a7, 1
    lw      s5,104(sp)
    mul     s6,a7,s5
    sw      s5,104(sp)
    add     a5,a5,s6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,240
    sd      a5,96(sp)
    ld      a5,96(sp)
    lw      a7,0(a5)
    sw      a7,92(sp)
    sd      a5,96(sp)
    lw      a5,92(sp)
    lw      a7,108(sp)
    add     s5,a5,a7
    sw      a5,92(sp)
    sw      a7,108(sp)
    sw      s5,88(sp)
    ld      a5,112(sp)
    lw      a7,88(sp)
    sw      a7,0(a5)
    sw      a7,88(sp)
    sd      a5,112(sp)
    j       .gather_12
.gather_12:
    j       .L2_0
.L2_0:
    lw      a5,1088(sp)
    li      a7, 1
    sub     s5,a5,a7
    sw      a5,1088(sp)
    sw      s5,84(sp)
    lw      a5,84(sp)
    mv      a7, a5
    sw      a5,84(sp)
    sw      a7,1088(sp)
    lw      a5,1080(sp)
    li      a7, 1
    sub     s5,a5,a7
    sw      a5,1080(sp)
    sw      s5,80(sp)
    lw      a5,80(sp)
    mv      a7, a5
    sw      a5,80(sp)
    sw      a7,1080(sp)
    sd      a0,152(sp)
    sb      a6,143(sp)
    sb      s4,183(sp)
    lw      a7,1076(sp)
    lw      a0,1088(sp)
    lw      a5,1080(sp)
    j       .while.head_40
.branch_false_44:
    li      a5, 0
    li      a7, 1
    lw      s5,1080(sp)
    mul     s6,a7,s5
    sw      s5,1080(sp)
    add     a5,a5,s6
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,240
    sd      a5,72(sp)
    ld      a5,72(sp)
    lw      a7,1076(sp)
    sw      a7,0(a5)
    sw      a7,1076(sp)
    sd      a5,72(sp)
    j       .gather_12
.while.exit_40:
    lw      a0,412(sp)
    add     a6,a5,a0
    sw      a5,1080(sp)
    sw      a0,412(sp)
    li      a0, 1
    sub     a5,a6,a0
    sw      a6,68(sp)
    mv      a0, a5
    sw      a5,64(sp)
    lw      a5,1092(sp)
    li      a6, 1
    sub     s5,a5,a6
    sw      a5,1092(sp)
    sw      s5,60(sp)
    lw      a5,60(sp)
    mv      a6, a5
    sw      a5,60(sp)
    sw      a6,1092(sp)
    sw      a0,1080(sp)
    sb      s3,207(sp)
    sb      s4,183(sp)
    sd      s1,192(sp)
    lw      a0,412(sp)
    lw      a6,1092(sp)
    lw      a5,1080(sp)
    j       .while.head_35
.while.exit_35:
    li      s1, 0
    li      s4, 1
    li      s5, 0
    mul     s6,s4,s5
    add     s1,s1,s6
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,240
    lw      s4,0(s1)
    sw      s4,44(sp)
    lw      s4,44(sp)
    li      s5, 0
    xor     s6,s4,s5
    snez    s6, s6
    sw      s4,44(sp)
    sb      s6,43(sp)
    lb      s4,43(sp)
    sb      s4,43(sp)
    lb      s4,43(sp)
    bnez    s4, .branch_true_54
    sb      s4,43(sp)
    j       .branch_false_54
.branch_true_54:
    li      s4, 0
    li      s5, 1
    li      s6, 0
    mul     s7,s5,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,240
    sd      s4,32(sp)
    ld      s4,32(sp)
    lw      s5,0(s4)
    sw      s5,28(sp)
    sd      s4,32(sp)
    sd      s1,48(sp)
    sw      s2,208(sp)
    sb      s3,207(sp)
    sw      a0,412(sp)
    sw      a1,408(sp)
    sw      a2,236(sp)
    sb      a3,231(sp)
    sw      a4,232(sp)
    sw      a5,1080(sp)
    sw      a6,1092(sp)
    sw      a7,1076(sp)
    lw      a0,28(sp)
    call    putint
    lb      a3,231(sp)
    lw      a7,1076(sp)
    lw      a0,412(sp)
    lw      a2,236(sp)
    lw      a6,1092(sp)
    lw      a4,232(sp)
    lb      s3,207(sp)
    lw      a1,408(sp)
    lw      s2,208(sp)
    ld      s1,48(sp)
    lw      a5,1080(sp)
    j       .branch_false_54
.branch_false_54:
    j       .L3_0
.L3_0:
    li      a6, 1
    j       .while.head_58
.while.head_58:
    add     s4,a0,a1
    sw      a0,412(sp)
    li      a0, 1
    sub     s5,s4,a0
    sw      s4,24(sp)
    slt     a0,s5,a6
    xori    a0,a0,1
    sw      a6,1092(sp)
    bnez    a0, .while.body_58
    j       .while.exit_58
.while.body_58:
    li      a6, 0
    li      s4, 1
    lw      s6,1092(sp)
    mul     s7,s4,s6
    sw      s6,1092(sp)
    add     a6,a6,s7
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,240
    sd      a6,8(sp)
    ld      a6,8(sp)
    lw      s4,0(a6)
    sw      s4,4(sp)
    sd      a6,8(sp)
    sd      s1,48(sp)
    sw      s2,208(sp)
    sb      s3,207(sp)
    sw      s5,20(sp)
    sb      a0,19(sp)
    sw      a1,408(sp)
    sw      a2,236(sp)
    sb      a3,231(sp)
    sw      a4,232(sp)
    sw      a5,1080(sp)
    sw      a7,1076(sp)
    lw      a0,4(sp)
    call    putint
    lw      a0,1092(sp)
    li      a1, 1
    add     a2,a0,a1
    mv      a0, a2
    sw      a0,1092(sp)
    sw      a2,0(sp)
    lb      a3,231(sp)
    lw      a7,1076(sp)
    lw      a0,412(sp)
    lw      a2,236(sp)
    lw      a6,1092(sp)
    lw      a4,232(sp)
    lb      s3,207(sp)
    lw      a1,408(sp)
    lw      s2,208(sp)
    ld      s1,48(sp)
    lw      a5,1080(sp)
    j       .while.head_58
.while.exit_58:
    ld      ra,1104(sp)
    ld      s0,1096(sp)
    sb      a0,19(sp)
    li      a0, 0
    addi    sp,sp,1112
    ret
.section ___var
    .data
    .align 4
    .globl len
    .type len,@object
len:
    .word 20
