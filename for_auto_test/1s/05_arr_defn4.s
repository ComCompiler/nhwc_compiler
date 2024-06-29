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
    addi    sp,sp,-560
    sd      ra,552(sp)
    sd      s0,544(sp)
    addi    s0,sp,560
.L0_0:
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,464
    sd      a0,536(sp)
    ld      a0,536(sp)
    li      a1, 0
    li      a2, 32
    call    memset
    li      a0, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    mul     a6,a4,a5
    add     a0,a0,a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,464
    li      a7, 7
    sw      a7,0(a0)
    li      s1, 0
    mul     s2,a1,a4
    add     s1,s1,s2
    mul     s4,a4,s3
    add     s1,s1,s4
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,464
    li      s5, 4
    sw      s5,0(s1)
    li      s6, 0
    mul     s7,a1,a5
    add     s6,s6,s7
    mul     s8,s3,a4
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,464
    sw      a1,0(s6)
    li      s9, 0
    mul     s10,a1,a5
    add     s9,s9,s10
    mul     s11,s3,a5
    add     s9,s9,s11
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,464
    sw      s3,0(s9)
    li      a1, 0
    mul     a3,a2,s3
    add     a1,a1,a3
    mul     a2,s3,a5
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,464
    li      a2, 3
    sw      a2,0(a1)
    li      a2, 3
    li      a3, 0
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,416
    sd      s1,520(sp)
    sd      s6,512(sp)
    sd      s9,504(sp)
    sd      a0,528(sp)
    sd      a1,496(sp)
    sw      a2,460(sp)
    sd      a3,448(sp)
    ld      a0,448(sp)
    li      a1, 0
    li      a2, 32
    call    memset
    li      a0, 0
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,312
    sd      a0,408(sp)
    ld      a0,408(sp)
    li      a1, 0
    li      a2, 32
    call    memset
    li      a0, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    mul     a6,a4,a5
    add     a0,a0,a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,312
    li      a7, 8
    sw      a7,0(a0)
    li      s1, 0
    mul     s2,a1,a2
    add     s1,s1,s2
    mul     s4,a5,s3
    add     s1,s1,s4
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,312
    li      s5, 7
    sw      s5,0(s1)
    li      s6, 0
    mul     s7,a1,a5
    add     s6,s6,s7
    mul     s8,a5,a4
    add     s6,s6,s8
    slli s6,s6,2
    add     s6,s6,sp
    addi    s6,s6,312
    li      s9, 4
    sw      s9,0(s6)
    li      s10, 0
    mul     a2,a1,s11
    add     s10,s10,a2
    mul     a1,a5,a4
    add     s10,s10,a1
    slli s10,s10,2
    add     s10,s10,sp
    addi    s10,s10,312
    li      a1, 6
    sw      a1,0(s10)
    li      a1, 0
    mul     a2,s11,s3
    add     a1,a1,a2
    mul     a2,a5,a4
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,312
    sw      s11,0(a1)
    li      a2, 0
    mul     a4,s11,a3
    add     a2,a2,a4
    mul     a3,a5,s3
    add     a2,a2,a3
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,312
    li      a3, 5
    sw      a3,0(a2)
    li      a3, 0
    mul     a4,s11,s3
    add     a3,a3,a4
    mul     a4,a5,s3
    add     a3,a3,a4
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,312
    sw      a5,0(a3)
    li      a4, 0
    mul     a6,s11,a5
    add     a4,a4,a6
    mul     a6,a5,s3
    add     a4,a4,a6
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,312
    li      a5, 3
    sw      a5,0(a4)
    li      a5, 0
    mul     a7,s11,a6
    add     a5,a5,a7
    mul     a7,a6,s3
    add     a5,a5,a7
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,464
    lw      a6,0(a5)
    li      a7, 0
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,208
    sd      s1,392(sp)
    sd      s6,384(sp)
    sd      s10,376(sp)
    sd      a0,400(sp)
    sd      a1,368(sp)
    sd      a2,360(sp)
    sd      a3,352(sp)
    sd      a4,344(sp)
    sd      a5,304(sp)
    sw      a6,300(sp)
    sd      a7,288(sp)
    ld      a0,288(sp)
    li      a1, 0
    li      a2, 32
    call    memset
    li      a0, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    mul     a5,a4,a2
    add     a0,a0,a5
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,208
    sw      a4,0(a0)
    li      a6, 0
    mul     s1,a1,a7
    add     a6,a6,s1
    mul     s2,a4,a2
    add     a6,a6,s2
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,208
    lw      s3,300(sp)
    sw      s3,0(a6)
    li      s4, 0
    mul     s5,a1,a4
    add     s4,s4,s5
    mul     s7,a4,s6
    add     s4,s4,s7
    slli s4,s4,2
    add     s4,s4,sp
    addi    s4,s4,208
    li      s8, 5
    sw      s8,0(s4)
    li      s9, 0
    mul     s10,a1,s6
    add     s9,s9,s10
    mul     s11,s6,a2
    add     s9,s9,s11
    slli s9,s9,2
    add     s9,s9,sp
    addi    s9,s9,208
    li      a1, 3
    sw      a1,0(s9)
    li      a1, 0
    mul     a3,a7,a2
    add     a1,a1,a3
    mul     a2,s6,a4
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,208
    li      a2, 8
    sw      a2,0(a1)
    li      a2, 0
    mul     a4,a7,a3
    add     a2,a2,a4
    mul     a4,s6,a3
    add     a2,a2,a4
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,208
    sw      a7,0(a2)
    li      a3, 0
    mul     a5,a7,a4
    add     a3,a3,a5
    mul     a5,s6,a4
    add     a3,a3,a5
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,208
    lw      a4,0(a3)
    li      a5, 0
    mul     s2,a7,s1
    add     a5,a5,s2
    mul     s1,s6,a7
    add     a5,a5,s1
    slli a5,a5,2
    add     a5,a5,sp
    addi    a5,a5,312
    lw      a7,0(a5)
    li      s1, 0
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,72
    sd      s1,168(sp)
    sw      s3,300(sp)
    sd      s4,264(sp)
    sd      s9,256(sp)
    sd      a0,280(sp)
    sd      a1,248(sp)
    sd      a2,240(sp)
    sd      a3,200(sp)
    sw      a4,196(sp)
    sd      a5,184(sp)
    sd      a6,272(sp)
    sw      a7,180(sp)
    ld      a0,168(sp)
    li      a1, 0
    li      a2, 32
    call    memset
    li      a0, 0
    mul     a3,a1,a2
    add     a0,a0,a3
    mul     a5,a2,a4
    add     a0,a0,a5
    mul     a6,a2,a4
    add     a0,a0,a6
    slli a0,a0,2
    add     a0,a0,sp
    addi    a0,a0,72
    li      a7, 3
    sw      a7,0(a0)
    li      s1, 0
    mul     s3,a1,s2
    add     s1,s1,s3
    mul     s4,a2,a4
    add     s1,s1,s4
    mul     s5,a2,a4
    add     s1,s1,s5
    slli s1,s1,2
    add     s1,s1,sp
    addi    s1,s1,72
    li      s6, 5
    sw      s6,0(s1)
    li      s7, 0
    mul     s8,a1,a4
    add     s7,s7,s8
    mul     s9,a2,a4
    add     s7,s7,s9
    mul     s10,a2,a4
    add     s7,s7,s10
    slli s7,s7,2
    add     s7,s7,sp
    addi    s7,s7,72
    lw      s11,196(sp)
    sw      s11,0(s7)
    li      a1, 0
    mul     a2,s2,a7
    add     a1,a1,a2
    mul     a3,a2,a4
    add     a1,a1,a3
    mul     a3,a2,a4
    add     a1,a1,a3
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,72
    li      a2, 7
    sw      a2,0(a1)
    li      a2, 0
    mul     a4,s2,a3
    add     a2,a2,a4
    mul     a5,a3,a4
    add     a2,a2,a5
    mul     a5,a3,a4
    add     a2,a2,a5
    slli a2,a2,2
    add     a2,a2,sp
    addi    a2,a2,72
    li      a3, 6
    sw      a3,0(a2)
    li      a3, 0
    mul     a5,s2,a4
    add     a3,a3,a5
    mul     a6,a4,a5
    add     a3,a3,a6
    mul     a6,a5,a4
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,72
    li      a4, 4
    sw      a4,0(a3)
    li      a4, 0
    mul     a6,s2,a5
    add     a4,a4,a6
    mul     a7,a5,a6
    add     a4,a4,a7
    mul     a7,a5,a6
    add     a4,a4,a7
    slli a4,a4,2
    add     a4,a4,sp
    addi    a4,a4,72
    lw      a5,180(sp)
    sw      a5,0(a4)
    li      a6, 0
    mul     s3,s2,a7
    add     a6,a6,s3
    mul     s3,a7,s2
    add     a6,a6,s3
    mul     s3,s2,a7
    add     a6,a6,s3
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,72
    li      a7, 8
    sw      a7,0(a6)
    li      a7, 0
    mul     s4,s2,s3
    add     a7,a7,s4
    mul     s4,s2,s3
    add     a7,a7,s4
    slli a7,a7,2
    add     a7,a7,sp
    addi    a7,a7,208
    lw      s2,0(a7)
    li      s3, 0
    mul     s6,s4,s5
    add     s3,s3,s6
    mul     s6,s4,s5
    add     s3,s3,s6
    mul     s6,s4,s5
    add     s3,s3,s6
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,72
    lw      s4,0(s3)
    li      s5, 0
    mul     s9,s6,s8
    add     s5,s5,s9
    mul     s9,s6,s8
    add     s5,s5,s9
    mul     s9,s6,s8
    add     s5,s5,s9
    slli s5,s5,2
    add     s5,s5,sp
    addi    s5,s5,72
    lw      s6,0(s5)
    li      s8, 0
    sd      a0,160(sp)
    mul     a0,s9,s10
    add     s8,s8,a0
    mul     s10,a0,s9
    add     s8,s8,s10
    mul     s10,s9,a0
    add     s8,s8,s10
    slli s8,s8,2
    add     s8,s8,sp
    addi    s8,s8,72
    lw      a0,0(s8)
    add     s9,a0,s6
    add     s10,s9,s4
    sw      a0,12(sp)
    add     a0,s10,s2
    ld      ra,552(sp)
    ld      s0,544(sp)
    sw      a0,0(sp)
    lw      a0,0(sp)
    addi    sp,sp,560
    ret
