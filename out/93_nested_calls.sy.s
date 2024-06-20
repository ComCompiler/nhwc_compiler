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
    .globl func1
    .type func1,@function
func1:
    addi    sp,sp,-72
    sd      ra,64(sp)
    sd      s0,48(sp)
    addi    s0,sp,72
.L12_0:
    li      a3, 0
    xor     a4,a2,a3
    sltiu   a4,a4,1
    bnez    a4, .branch_true_20
    j       .branch_false_20
.branch_true_20:
    mul     a5,a0,a1
    ld      ra,64(sp)
    ld      s0,48(sp)
    mv      a0, a5
    addi    sp,sp,72
    ret
.branch_false_20:
    sub     a6,a1,a2
    sw      a0,40(sp)
    mv      a0, a0
    sw      a6,12(sp)
    sw      a1,32(sp)
    mv      a1, a1
    sw      a2,24(sp)
    li      a2, 0
    call    func1
    sw      a0,4(sp)
    ld      ra,64(sp)
    ld      s0,48(sp)
    mv      a0, a0
    addi    sp,sp,72
    ret
.L13_0:
    .globl func2
    .type func2,@function
func2:
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,32(sp)
    addi    s0,sp,56
.L10_0:
    xor     a2,a1,a3
    sltiu   a2,a2,1
    xori    a2,a2,1
    bnez    a2, .branch_true_29
    j       .branch_false_29
.branch_true_29:
    mv      a6, a6
    rem     a6,a0,a1
    sw      a6,11(sp)
    sw      a0,24(sp)
    mv      a0, a0
    sw      a1,16(sp)
    li      a1, 0
    call    func2
    sw      a0,4(sp)
    ld      ra,48(sp)
    ld      s0,32(sp)
    mv      a0, a0
    addi    sp,sp,56
    ret
.branch_false_29:
    ld      ra,48(sp)
    ld      s0,32(sp)
    lw      a0,24(sp)
    addi    sp,sp,56
    ret
.L11_0:
    .globl func3
    .type func3,@function
func3:
    addi    sp,sp,-64
    sd      ra,56(sp)
    sd      s0,40(sp)
    addi    s0,sp,64
.L8_0:
    xor     a6,a1,a3
    sltiu   a6,a6,1
    bnez    a6, .branch_true_38
    j       .branch_false_38
.branch_true_38:
    li      a7, 1
    add     s1,a0,a7
    ld      ra,56(sp)
    ld      s0,40(sp)
    mv      a0, s1
    addi    sp,sp,64
    ret
.branch_false_38:
    add     s2,a0,a1
    sw      s1,19(sp)
    sw      s2,12(sp)
    sw      a0,32(sp)
    mv      a0, a0
    sw      a1,24(sp)
    li      a1, 0
    call    func3
    sw      a0,4(sp)
    ld      ra,56(sp)
    ld      s0,40(sp)
    mv      a0, a0
    addi    sp,sp,64
    ret
.L9_0:
    .globl func4
    .type func4,@function
func4:
    addi    sp,sp,-56
    sd      ra,48(sp)
    sd      s0,32(sp)
    addi    s0,sp,56
.L6_0:
    xor     s1,a0,a3
    sltiu   s1,s1,1
    xori    s1,s1,1
    bnez    s1, .branch_true_47
    j       .branch_false_47
.branch_true_47:
    ld      ra,48(sp)
    ld      s0,32(sp)
    mv      a0, a1
    addi    sp,sp,56
    ret
.branch_false_47:
    ld      ra,48(sp)
    ld      s0,32(sp)
    mv      a0, a2
    addi    sp,sp,56
    ret
.L7_0:
    .globl func5
    .type func5,@function
func5:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,24(sp)
    addi    s0,sp,48
.L5_0:
    sub     s2,a3,a0
    ld      ra,40(sp)
    ld      s0,24(sp)
    mv      a0, s2
    addi    sp,sp,48
    ret
    .globl func6
    .type func6,@function
func6:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,24(sp)
    addi    s0,sp,48
.L3_0:
    xor     s3,a0,a3
    sltiu   s3,s3,1
    xori    s3,s3,1
    mv      s4, s4
    and     s5,s3,s4
    bnez    s5, .branch_true_60
    j       .branch_false_60
.branch_true_60:
    ld      ra,40(sp)
    ld      s0,24(sp)
    li      a0, 1
    addi    sp,sp,48
    ret
.branch_false_60:
    ld      ra,40(sp)
    ld      s0,24(sp)
    li      a0, 0
    addi    sp,sp,48
    ret
.L4_0:
    .globl func7
    .type func7,@function
func7:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,16(sp)
    addi    s0,sp,40
.L1_0:
    xor     s6,a0,a3
    sltiu   s6,s6,1
    xori    s6,s6,1
    xori    s7,s6,-1
    bnez    s7, .branch_true_69
    j       .branch_false_69
.branch_true_69:
    ld      ra,32(sp)
    ld      s0,16(sp)
    li      a0, 1
    addi    sp,sp,40
    ret
.branch_false_69:
    ld      ra,32(sp)
    ld      s0,16(sp)
    li      a0, 0
    addi    sp,sp,40
    ret
.L2_0:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-928
    sd      ra,920(sp)
    sd      s0,904(sp)
    addi    s0,sp,928
.L0_0:
    sb      s1,7(sp)
    sw      s2,8(sp)
    sb      s3,7(sp)
    sb      s4,6(sp)
    sb      s5,5(sp)
    sb      s6,7(sp)
    sb      s7,6(sp)
    call    getint
    sw      a0,8(sp)
    sw      a0,896(sp)
    mv      s1, a0
    sw      s1,888(sp)
    call    getint
    sw      a0,896(sp)
    sw      a0,880(sp)
    mv      s1, a0
    sw      s1,872(sp)
    call    getint
    sw      a0,880(sp)
    sw      a0,864(sp)
    mv      s1, a0
    sw      s1,856(sp)
    call    getint
    sw      a0,864(sp)
    sw      a0,848(sp)
    mv      s1, a0
    mv      s2, a3
    j       .while.head_80
.while.head_80:
    li      s3, 10
    slt     s4,s2,s3
    bnez    s4, .while.body_80
    j       .while.exit_80
.while.body_80:
    li      s5, 0
    mul     s6,a7,s2
    add     s5,s5,s6
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    sw      s1,840(sp)
    sw      s2,788(sp)
    sb      s4,787(sp)
    sd      s5,779(sp)
    sw      s6,832(sp)
    call    getint
    sw      a0,848(sp)
    sw      a0,772(sp)
    mv      s1, s1
    sd      a0,0(s1)
    mv      s2, s2
    add     s3,s2,a7
    j       .while.head_80
.while.exit_80:
    sd      s1,779(sp)
    sw      s2,788(sp)
    sw      s3,764(sp)
    sw      a0,772(sp)
    mv      a0, a0
    call    func7
    sw      a0,756(sp)
    sw      a0,756(sp)
    mv      a0, a0
    call    func5
    sw      a0,748(sp)
    sw      a0,748(sp)
    mv      a0, a0
    sw      a1,8(sp)
    mv      a1, a1
    call    func6
    sw      a0,740(sp)
    sw      a0,740(sp)
    mv      a0, a0
    mv      a1, a1
    call    func2
    sw      a0,732(sp)
    sw      a0,732(sp)
    mv      a0, a0
    mv      a1, a1
    call    func3
    sw      a0,724(sp)
    sw      a0,724(sp)
    mv      a0, a0
    call    func5
    sw      a0,716(sp)
    li      a1, 0
    mul     s1,a7,a3
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      s2, 0
    li      s3, 1
    add     s2,s2,s1
    slli s2,s2,2
    add     s2,s2,sp
    add     s2,s2,s2
    sw      s1,832(sp)
    sd      s2,680(sp)
    sw      a0,716(sp)
    mv      a0, a0
    call    func5
    sw      a0,664(sp)
    li      s1, 0
    li      s2, 2
    mul     s3,a7,s2
    add     s1,s1,s3
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    li      s4, 0
    li      s5, 3
    add     s4,s4,s3
    slli s4,s4,2
    add     s4,s4,sp
    add     s4,s4,s4
    sd      s1,648(sp)
    sw      s3,832(sp)
    sd      s4,624(sp)
    sw      a0,664(sp)
    mv      a0, a0
    call    func7
    sw      a0,608(sp)
    sw      a0,608(sp)
    mv      a0, a0
    sd      a1,704(sp)
    mv      a1, a1
    call    func6
    sw      a0,600(sp)
    li      a1, 0
    li      s1, 4
    mul     s2,a7,s1
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      s3, 0
    li      s4, 5
    add     s3,s3,s2
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    sw      s2,832(sp)
    sd      s3,560(sp)
    sw      a0,600(sp)
    mv      a0, a0
    call    func7
    sw      a0,544(sp)
    sw      a0,544(sp)
    mv      a0, a0
    sd      a1,584(sp)
    mv      a1, a1
    call    func2
    sw      a0,536(sp)
    sw      a0,536(sp)
    mv      a0, a0
    mv      a1, a1
    sw      a2,8(sp)
    mv      a2, a2
    call    func4
    sw      a0,528(sp)
    li      a1, 0
    li      a2, 6
    mul     s1,a7,a2
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sw      s1,832(sp)
    sw      a0,528(sp)
    mv      a0, a0
    sd      a1,512(sp)
    mv      a1, a1
    call    func3
    sw      a0,496(sp)
    li      a1, 0
    li      s1, 7
    mul     s2,a7,s1
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sw      s2,832(sp)
    sw      a0,496(sp)
    mv      a0, a0
    sd      a1,480(sp)
    mv      a1, a1
    call    func2
    sw      a0,464(sp)
    li      a1, 0
    li      s1, 8
    mul     s2,a7,s1
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      s3, 0
    li      s4, 9
    add     s3,s3,s2
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    sw      s2,832(sp)
    sd      s3,424(sp)
    sw      a0,464(sp)
    mv      a0, a0
    call    func7
    sw      a0,408(sp)
    sw      a0,408(sp)
    mv      a0, a0
    sd      a1,448(sp)
    mv      a1, a1
    call    func3
    sw      a0,400(sp)
    sw      a0,400(sp)
    mv      a0, a0
    mv      a1, a1
    mv      a2, a2
    call    func1
    sw      a0,392(sp)
    sw      a0,392(sp)
    mv      a0, a0
    mv      a1, a1
    mv      a2, a2
    call    func4
    sw      a0,384(sp)
    sw      a0,384(sp)
    mv      a0, a0
    call    func7
    sw      a0,376(sp)
    sw      a0,376(sp)
    mv      a0, a0
    mv      a1, a1
    call    func3
    sw      a0,368(sp)
    sw      a0,368(sp)
    mv      a0, a0
    mv      a1, a1
    call    func2
    sw      a0,360(sp)
    sw      a0,360(sp)
    mv      a0, a0
    mv      a1, a1
    call    func3
    sw      a0,352(sp)
    li      a1, 0
    mul     a2,a7,a3
    add     a1,a1,a2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      s1, 0
    li      s2, 1
    add     s1,s1,a2
    slli s1,s1,2
    add     s1,s1,sp
    add     s1,s1,s1
    sd      s1,312(sp)
    sw      a0,352(sp)
    mv      a0, a0
    sd      a1,336(sp)
    mv      a1, a1
    sw      a2,832(sp)
    mv      a2, a2
    call    func1
    sw      a0,296(sp)
    li      a1, 0
    li      a2, 2
    mul     s1,a7,a2
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sw      s1,832(sp)
    sw      a0,296(sp)
    mv      a0, a0
    sd      a1,280(sp)
    mv      a1, a1
    call    func2
    sw      a0,264(sp)
    li      a1, 0
    li      s1, 3
    mul     s2,a7,s1
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      s3, 0
    li      s4, 4
    add     s3,s3,s2
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    li      s5, 0
    li      s6, 5
    add     s5,s5,s2
    slli s5,s5,2
    add     s5,s5,sp
    add     s5,s5,s5
    sw      s2,832(sp)
    sd      s3,224(sp)
    sd      s5,200(sp)
    sw      a0,264(sp)
    mv      a0, a0
    call    func5
    sw      a0,184(sp)
    sw      a0,184(sp)
    mv      a0, a0
    sd      a1,248(sp)
    mv      a1, a1
    call    func3
    sw      a0,176(sp)
    li      a1, 0
    li      s1, 6
    mul     s2,a7,s1
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sw      s2,832(sp)
    sw      a0,176(sp)
    mv      a0, a0
    call    func5
    sw      a0,144(sp)
    sw      a0,144(sp)
    mv      a0, a0
    sd      a1,160(sp)
    mv      a1, a1
    call    func2
    sw      a0,136(sp)
    li      a1, 0
    li      s1, 7
    mul     s2,a7,s1
    add     a1,a1,s2
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    li      s3, 0
    li      s4, 8
    add     s3,s3,s2
    slli s3,s3,2
    add     s3,s3,sp
    add     s3,s3,s3
    sw      s2,832(sp)
    sd      s3,96(sp)
    sw      a0,136(sp)
    mv      a0, a0
    call    func7
    sw      a0,80(sp)
    sw      a0,80(sp)
    mv      a0, a0
    sd      a1,120(sp)
    mv      a1, a1
    mv      a2, a2
    call    func1
    sw      a0,72(sp)
    li      a1, 0
    li      a2, 9
    mul     s1,a7,a2
    add     a1,a1,s1
    slli a1,a1,2
    add     a1,a1,sp
    add     a1,a1,a1
    sw      s1,832(sp)
    sw      a0,72(sp)
    mv      a0, a0
    call    func5
    sw      a0,40(sp)
    sw      a0,40(sp)
    mv      a0, a0
    sd      a1,56(sp)
    mv      a1, a1
    call    func2
    sw      a0,32(sp)
    sw      a0,32(sp)
    mv      a0, a0
    mv      a1, a1
    call    func3
    sw      a0,24(sp)
    sw      a0,24(sp)
    mv      a0, a0
    mv      a1, a1
    mv      a2, a2
    call    func1
    sw      a0,16(sp)
    mv      a1, a0
    ld      ra,920(sp)
    ld      s0,904(sp)
    mv      a0, a1
    addi    sp,sp,928
    ret
