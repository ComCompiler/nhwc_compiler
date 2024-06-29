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
    .globl func1
    .type func1,@function
func1:
    addi    sp,sp,-48
    sd      ra,40(sp)
    sd      s0,32(sp)
    addi    s0,sp,48
.L12_0:
    li      a3, 0
    xor     a4,a2,a3
    seqz    a4, a4
    bnez    a4, .branch_true_20
    j       .branch_false_20
.branch_true_20:
    mul     a3,a0,a1
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      a3,12(sp)
    sw      a0,28(sp)
    lw      a0,12(sp)
    addi    sp,sp,48
    ret
.branch_false_20:
    sub     a3,a1,a2
    sw      a0,28(sp)
    sw      a1,24(sp)
    sw      a2,20(sp)
    sw      a3,8(sp)
    sb      a4,19(sp)
    lw      a0,28(sp)
    lw      a1,8(sp)
    li      a2, 0
    call    func1
    sw      a0,4(sp)
    ld      ra,40(sp)
    ld      s0,32(sp)
    sw      a0,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,48
    ret
.L13_0:
    .globl func2
    .type func2,@function
func2:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L10_0:
    li      a2, 0
    xor     a3,a1,a2
    snez    a3, a3
    bnez    a3, .branch_true_29
    j       .branch_false_29
.branch_true_29:
    rem     a2,a0,a1
    sw      a0,20(sp)
    sw      a1,16(sp)
    sw      a2,8(sp)
    sb      a3,15(sp)
    lw      a0,8(sp)
    li      a1, 0
    call    func2
    sw      a0,4(sp)
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a0,4(sp)
    lw      a0,4(sp)
    addi    sp,sp,40
    ret
.branch_false_29:
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a0,20(sp)
    lw      a0,20(sp)
    addi    sp,sp,40
    ret
.L11_0:
    .globl func3
    .type func3,@function
func3:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,24(sp)
    addi    s0,sp,40
.L8_0:
    li      a2, 0
    xor     a3,a1,a2
    seqz    a3, a3
    bnez    a3, .branch_true_38
    j       .branch_false_38
.branch_true_38:
    li      a2, 1
    add     a4,a0,a2
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a4,8(sp)
    sw      a0,20(sp)
    lw      a0,8(sp)
    addi    sp,sp,40
    ret
.branch_false_38:
    add     a2,a0,a1
    sw      a0,20(sp)
    sw      a1,16(sp)
    sw      a2,4(sp)
    sb      a3,15(sp)
    lw      a0,4(sp)
    li      a1, 0
    call    func3
    sw      a0,0(sp)
    ld      ra,32(sp)
    ld      s0,24(sp)
    sw      a0,0(sp)
    lw      a0,0(sp)
    addi    sp,sp,40
    ret
.L9_0:
    .globl func4
    .type func4,@function
func4:
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
.L6_0:
    li      a3, 0
    xor     a4,a0,a3
    snez    a4, a4
    bnez    a4, .branch_true_47
    j       .branch_false_47
.branch_true_47:
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a1,8(sp)
    sw      a0,12(sp)
    lw      a0,8(sp)
    addi    sp,sp,32
    ret
.branch_false_47:
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a2,4(sp)
    sw      a0,12(sp)
    lw      a0,4(sp)
    addi    sp,sp,32
    ret
.L7_0:
    .globl func5
    .type func5,@function
func5:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L5_0:
    li      a1, 0
    sub     a2,a1,a0
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a2,0(sp)
    sw      a0,4(sp)
    lw      a0,0(sp)
    addi    sp,sp,24
    ret
    .globl func6
    .type func6,@function
func6:
    addi    sp,sp,-32
    sd      ra,24(sp)
    sd      s0,16(sp)
    addi    s0,sp,32
.L3_0:
    li      a2, 0
    xor     a3,a0,a2
    snez    a3, a3
    xor     a3,a1,a2
    snez    a3, a3
    lb      a4,6(sp)
    and     a5,a3,a4
    bnez    a5, .branch_true_60
    j       .branch_false_60
.branch_true_60:
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
    li      a0, 1
    addi    sp,sp,32
    ret
.branch_false_60:
    ld      ra,24(sp)
    ld      s0,16(sp)
    sw      a0,12(sp)
    li      a0, 0
    addi    sp,sp,32
    ret
.L4_0:
    .globl func7
    .type func7,@function
func7:
    addi    sp,sp,-24
    sd      ra,16(sp)
    sd      s0,8(sp)
    addi    s0,sp,24
.L1_0:
    li      a1, 0
    xor     a2,a0,a1
    snez    a2, a2
    seqz    a3, a2
    bnez    a3, .branch_true_69
    j       .branch_false_69
.branch_true_69:
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 1
    addi    sp,sp,24
    ret
.branch_false_69:
    ld      ra,16(sp)
    ld      s0,8(sp)
    sw      a0,4(sp)
    li      a0, 0
    addi    sp,sp,24
    ret
.L2_0:
    .globl main
    .type main,@function
main:
    addi    sp,sp,-544
    sd      ra,536(sp)
    sd      s0,528(sp)
    addi    s0,sp,544
.L0_0:
    call    getint
    sw      a0,524(sp)
    mv      a1, a0
    sw      a0,524(sp)
    sw      a1,520(sp)
    call    getint
    sw      a0,516(sp)
    mv      a1, a0
    sw      a0,516(sp)
    sw      a1,512(sp)
    call    getint
    sw      a0,508(sp)
    mv      a1, a0
    sw      a0,508(sp)
    sw      a1,504(sp)
    call    getint
    sw      a0,500(sp)
    mv      a1, a0
    li      a2, 0
    j       .while.head_80
.while.head_80:
    li      a3, 10
    slt     a4,a2,a3
    bnez    a4, .while.body_80
    j       .while.exit_80
.while.body_80:
    li      a3, 0
    li      a5, 1
    mul     a6,a5,a2
    add     a3,a3,a6
    slli a3,a3,2
    add     a3,a3,sp
    addi    a3,a3,456
    sw      a0,500(sp)
    sw      a1,496(sp)
    sw      a2,452(sp)
    sd      a3,440(sp)
    sb      a4,451(sp)
    call    getint
    sw      a0,436(sp)
    ld      a1,440(sp)
    sw      a0,0(a1)
    lw      a2,452(sp)
    li      a3, 1
    add     a4,a2,a3
    mv      a2, a4
    sw      a0,436(sp)
    sd      a1,440(sp)
    sw      a4,432(sp)
    lw      a0,500(sp)
    lw      a1,496(sp)
    j       .while.head_80
.while.exit_80:
    sw      a0,500(sp)
    sw      a1,496(sp)
    sw      a2,452(sp)
    sb      a4,451(sp)
    lw      a0,520(sp)
    call    func7
    sw      a0,428(sp)
    sw      a0,428(sp)
    lw      a0,512(sp)
    call    func5
    sw      a0,424(sp)
    sw      a0,424(sp)
    lw      a0,428(sp)
    lw      a1,424(sp)
    call    func6
    sw      a0,420(sp)
    sw      a0,420(sp)
    lw      a0,420(sp)
    lw      a1,504(sp)
    call    func2
    sw      a0,416(sp)
    sw      a0,416(sp)
    lw      a0,416(sp)
    lw      a1,496(sp)
    call    func3
    sw      a0,412(sp)
    sw      a0,412(sp)
    lw      a0,412(sp)
    call    func5
    sw      a0,408(sp)
    li      a1, 0
    li      a2, 1
    li      a3, 0
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,456
    lw      a5,0(a1)
    li      a6, 0
    li      a7, 1
    mul     s1,a2,a7
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,456
    lw      s2,0(a6)
    sw      s2,380(sp)
    sw      a0,408(sp)
    sd      a1,400(sp)
    sw      a5,396(sp)
    sd      a6,384(sp)
    lw      a0,380(sp)
    call    func5
    sw      a0,376(sp)
    li      a1, 0
    li      a2, 1
    li      a3, 2
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,456
    lw      a5,0(a1)
    li      a6, 0
    li      a7, 3
    mul     s1,a2,a7
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,456
    lw      s2,0(a6)
    sw      s2,348(sp)
    sw      a0,376(sp)
    sd      a1,368(sp)
    sw      a5,364(sp)
    sd      a6,352(sp)
    lw      a0,348(sp)
    call    func7
    sw      a0,344(sp)
    sw      a0,344(sp)
    lw      a0,364(sp)
    lw      a1,344(sp)
    call    func6
    sw      a0,340(sp)
    li      a1, 0
    li      a2, 1
    li      a3, 4
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,456
    lw      a5,0(a1)
    li      a6, 0
    li      a7, 5
    mul     s1,a2,a7
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,456
    lw      s2,0(a6)
    sw      s2,308(sp)
    sw      a0,340(sp)
    sd      a1,328(sp)
    sw      a5,324(sp)
    sd      a6,312(sp)
    lw      a0,308(sp)
    call    func7
    sw      a0,304(sp)
    sw      a0,304(sp)
    lw      a0,324(sp)
    lw      a1,304(sp)
    call    func2
    sw      a0,300(sp)
    sw      a0,300(sp)
    lw      a0,376(sp)
    lw      a1,340(sp)
    lw      a2,300(sp)
    call    func4
    sw      a0,296(sp)
    li      a1, 0
    li      a2, 1
    li      a3, 6
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,456
    lw      a5,0(a1)
    sw      a0,296(sp)
    sd      a1,288(sp)
    sw      a5,284(sp)
    lw      a0,296(sp)
    lw      a1,284(sp)
    call    func3
    sw      a0,280(sp)
    li      a1, 0
    li      a2, 1
    li      a3, 7
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,456
    lw      a5,0(a1)
    sw      a0,280(sp)
    sd      a1,272(sp)
    sw      a5,268(sp)
    lw      a0,280(sp)
    lw      a1,268(sp)
    call    func2
    sw      a0,264(sp)
    li      a1, 0
    li      a2, 1
    li      a3, 8
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,456
    lw      a5,0(a1)
    li      a6, 0
    li      a7, 9
    mul     s1,a2,a7
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,456
    lw      s2,0(a6)
    sw      s2,236(sp)
    sw      a0,264(sp)
    sd      a1,256(sp)
    sw      a5,252(sp)
    sd      a6,240(sp)
    lw      a0,236(sp)
    call    func7
    sw      a0,232(sp)
    sw      a0,232(sp)
    lw      a0,252(sp)
    lw      a1,232(sp)
    call    func3
    sw      a0,228(sp)
    sw      a0,228(sp)
    lw      a0,264(sp)
    lw      a1,228(sp)
    lw      a2,520(sp)
    call    func1
    sw      a0,224(sp)
    sw      a0,224(sp)
    lw      a0,408(sp)
    lw      a1,396(sp)
    lw      a2,224(sp)
    call    func4
    sw      a0,220(sp)
    sw      a0,220(sp)
    lw      a0,504(sp)
    call    func7
    sw      a0,216(sp)
    sw      a0,216(sp)
    lw      a0,216(sp)
    lw      a1,496(sp)
    call    func3
    sw      a0,212(sp)
    sw      a0,212(sp)
    lw      a0,512(sp)
    lw      a1,212(sp)
    call    func2
    sw      a0,208(sp)
    sw      a0,208(sp)
    lw      a0,220(sp)
    lw      a1,208(sp)
    call    func3
    sw      a0,204(sp)
    li      a1, 0
    li      a2, 1
    li      a3, 0
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,456
    lw      a5,0(a1)
    li      a6, 0
    li      a7, 1
    mul     s1,a2,a7
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,456
    lw      s2,0(a6)
    sw      s2,172(sp)
    sw      a0,204(sp)
    sd      a1,192(sp)
    sw      a5,188(sp)
    sd      a6,176(sp)
    lw      a0,204(sp)
    lw      a1,188(sp)
    lw      a2,172(sp)
    call    func1
    sw      a0,168(sp)
    li      a1, 0
    li      a2, 1
    li      a3, 2
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,456
    lw      a5,0(a1)
    sw      a0,168(sp)
    sd      a1,160(sp)
    sw      a5,156(sp)
    lw      a0,168(sp)
    lw      a1,156(sp)
    call    func2
    sw      a0,152(sp)
    li      a1, 0
    li      a2, 1
    li      a3, 3
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,456
    lw      a5,0(a1)
    li      a6, 0
    li      a7, 4
    mul     s1,a2,a7
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,456
    lw      s2,0(a6)
    li      s3, 0
    li      s4, 5
    mul     s5,a2,s4
    add     s3,s3,s5
    slli s3,s3,2
    add     s3,s3,sp
    addi    s3,s3,456
    lw      s6,0(s3)
    sw      s2,124(sp)
    sd      s3,112(sp)
    sw      s6,108(sp)
    sw      a0,152(sp)
    sd      a1,144(sp)
    sw      a5,140(sp)
    sd      a6,128(sp)
    lw      a0,108(sp)
    call    func5
    sw      a0,104(sp)
    sw      a0,104(sp)
    lw      a0,124(sp)
    lw      a1,104(sp)
    call    func3
    sw      a0,100(sp)
    li      a1, 0
    li      a2, 1
    li      a3, 6
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,456
    lw      a5,0(a1)
    sw      a0,100(sp)
    sd      a1,88(sp)
    sw      a5,84(sp)
    lw      a0,84(sp)
    call    func5
    sw      a0,80(sp)
    sw      a0,80(sp)
    lw      a0,100(sp)
    lw      a1,80(sp)
    call    func2
    sw      a0,76(sp)
    li      a1, 0
    li      a2, 1
    li      a3, 7
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,456
    lw      a5,0(a1)
    li      a6, 0
    li      a7, 8
    mul     s1,a2,a7
    add     a6,a6,s1
    slli a6,a6,2
    add     a6,a6,sp
    addi    a6,a6,456
    lw      s2,0(a6)
    sw      s2,44(sp)
    sw      a0,76(sp)
    sd      a1,64(sp)
    sw      a5,60(sp)
    sd      a6,48(sp)
    lw      a0,44(sp)
    call    func7
    sw      a0,40(sp)
    sw      a0,40(sp)
    lw      a0,76(sp)
    lw      a1,60(sp)
    lw      a2,40(sp)
    call    func1
    sw      a0,36(sp)
    li      a1, 0
    li      a2, 1
    li      a3, 9
    mul     a4,a2,a3
    add     a1,a1,a4
    slli a1,a1,2
    add     a1,a1,sp
    addi    a1,a1,456
    lw      a5,0(a1)
    sw      a0,36(sp)
    sd      a1,24(sp)
    sw      a5,20(sp)
    lw      a0,20(sp)
    call    func5
    sw      a0,16(sp)
    sw      a0,16(sp)
    lw      a0,36(sp)
    lw      a1,16(sp)
    call    func2
    sw      a0,12(sp)
    sw      a0,12(sp)
    lw      a0,12(sp)
    lw      a1,520(sp)
    call    func3
    sw      a0,8(sp)
    sw      a0,8(sp)
    lw      a0,152(sp)
    lw      a1,140(sp)
    lw      a2,8(sp)
    call    func1
    sw      a0,4(sp)
    mv      a1, a0
    ld      ra,536(sp)
    ld      s0,528(sp)
    sw      a1,0(sp)
    sw      a0,4(sp)
    lw      a0,0(sp)
    addi    sp,sp,544
    ret
