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
    .globl relu_reg
    .type relu_reg,@function
relu_reg:
    addi    sp,sp,-40
    sd      ra,32(sp)
    sd      s0,16(sp)
    addi    s0,sp,40
.L5_0:
    li      a1, 0x7F
    slt     a2,a1,a0
    bnez    a2, .branch_true_20
    j       .branch_false_20
.branch_true_20:
    ld      ra,32(sp)
    ld      s0,16(sp)
    li      a0, 0x7F
    addi    sp,sp,40
    ret
.branch_false_20:
.L6_0:
    li      a3, 0
    slt     a4,a0,a3
    bnez    a4, .branch_true_23
    j       .branch_false_23
.branch_true_23:
    ld      ra,32(sp)
    ld      s0,16(sp)
    li      a0, 0
    addi    sp,sp,40
    ret
.branch_false_23:
.L7_0:
    ld      ra,32(sp)
    ld      s0,16(sp)
    mv      a0, a0
    addi    sp,sp,40
    ret
    .globl model
    .type model,@function
model:
    li      a5, -4729
    li      a5, -4729
    add     sp,a5,sp
    sd      ra,4721(sp)
    sd      s0,4705(sp)
    li      a6, 4729
    li      a6, 4729
    add     s0,a6,sp
.L3_0:
    li      a7, 0
    li      s1, 1
    li      s2, 2
    add     a7,a7,a0
    slli a7,a7,3
    add     a7,a7,sp
    add     a7,a7,a7
    li      s3, -7
    mv      s4, s4
    mul     s5,s3,s4
    li      s6, 0
    li      s7, 4
    add     s6,s6,a0
    slli s6,s6,3
    add     s6,s6,sp
    add     s6,s6,s6
    mv      s8, s8
    li      s9, 85
    mul     s10,s8,s9
    li      s11, 0
    add     s11,s11,a0
    slli s11,s11,3
    add     s11,s11,sp
    add     s11,s11,s11
    li      a1, -49
    mv      a3, a3
    mul     a5,a1,a3
    add     a1,a5,s10
    li      a6, 0
    add     a6,a6,a0
    slli a6,a6,3
    add     a6,a6,sp
    add     a6,a6,a6
    mv      s1, s1
    li      s2, 36
    mul     s3,s1,s2
    add     s2,s3,a1
    li      s7, 0
    li      s9, 1
    sd      a0,4689(sp)
    li      a0, 4
    sw      a1,4585(sp)
    mul     a1,s9,a0
    add     s7,s7,a1
    slli s7,s7,3
    add     s7,s7,sp
    add     s7,s7,s7
    mv      a0, a0
    li      s9, -121
    sd      a1,4689(sp)
    mul     a1,a0,s9
    add     s9,a1,s2
    sw      a0,4521(sp)
    li      a0, 0
    sw      a1,4513(sp)
    li      a1, 1
    sb      a2,7(sp)
    li      a2, 4
    sw      a3,4601(sp)
    mul     a3,a1,a2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 115
    mv      a2, a2
    sd      a0,4489(sp)
    mul     a0,a1,a2
    add     a1,a0,s9
    sw      a0,4473(sp)
    li      a0, 0
    sw      a1,4465(sp)
    li      a1, 1
    sw      a2,4481(sp)
    li      a2, 3
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    li      a2, 29
    sd      a0,4449(sp)
    mul     a0,a1,a2
    mv      a2, a2
    sw      a1,4441(sp)
    add     a1,a0,a2
    sw      a0,4433(sp)
    li      a0, 0
    sw      a1,4425(sp)
    li      a1, 1
    sw      a2,4465(sp)
    li      a2, 3
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    li      a2, 38
    sd      a0,4409(sp)
    mul     a0,a1,a2
    mv      a2, a2
    sw      a1,4401(sp)
    add     a1,a0,a2
    sw      a0,4393(sp)
    li      a0, 0
    sw      a1,4385(sp)
    li      a1, 1
    sw      a2,4425(sp)
    li      a2, 3
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    li      a2, -68
    sd      a0,4369(sp)
    mul     a0,a1,a2
    mv      a2, a2
    sw      a1,4361(sp)
    add     a1,a0,a2
    sw      a0,4353(sp)
    li      a0, 0
    sw      a1,4345(sp)
    li      a1, 1
    sw      a2,4385(sp)
    li      a2, 3
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 22
    mv      a2, a2
    sd      a0,4329(sp)
    mul     a0,a1,a2
    mv      a1, a1
    sw      a2,4321(sp)
    add     a2,a0,a1
    sw      a0,4313(sp)
    li      a0, 0
    sw      a1,4345(sp)
    li      a1, 1
    sw      a2,4305(sp)
    li      a2, 3
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    li      a2, 47
    sd      a0,4289(sp)
    mul     a0,a1,a2
    mv      a2, a2
    sw      a1,4281(sp)
    add     a1,a0,a2
    sw      a0,4273(sp)
    li      a0, 0
    sw      a1,4265(sp)
    li      a1, 1
    sw      a2,4305(sp)
    li      a2, 2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    li      a2, 67
    sd      a0,4249(sp)
    mul     a0,a1,a2
    mv      a2, a2
    sw      a1,4241(sp)
    add     a1,a0,a2
    sw      a0,4233(sp)
    li      a0, 0
    sw      a1,4225(sp)
    li      a1, 1
    sw      a2,4265(sp)
    li      a2, 2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, -122
    mv      a2, a2
    sd      a0,4209(sp)
    mul     a0,a1,a2
    mv      a1, a1
    sw      a2,4201(sp)
    add     a2,a0,a1
    sw      a0,4193(sp)
    add     a0,a2,s5
    sw      a0,4177(sp)
    li      a0, 0
    sw      a1,4225(sp)
    li      a1, 1
    sw      a2,4185(sp)
    li      a2, 2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    li      a2, -74
    sd      a0,4161(sp)
    mul     a0,a1,a2
    mv      a2, a2
    sw      a1,4153(sp)
    add     a1,a0,a2
    sw      a0,4145(sp)
    li      a0, 0
    sw      a1,4137(sp)
    li      a1, 1
    sw      a2,4177(sp)
    li      a2, 2
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 109
    mv      a2, a2
    sd      a0,4121(sp)
    mul     a0,a1,a2
    mv      a1, a1
    sw      a2,4113(sp)
    add     a2,a0,a1
    sw      a0,4105(sp)
    li      a0, 0
    sw      a1,4137(sp)
    li      a1, 1
    sw      a2,4097(sp)
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, -51
    mv      a2, a2
    sd      a0,4081(sp)
    mul     a0,a1,a2
    mv      a1, a1
    sw      a2,4073(sp)
    add     a2,a0,a1
    sw      a0,4065(sp)
    li      a0, 0
    sw      a1,4097(sp)
    li      a1, 1
    sw      a2,4057(sp)
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    li      a2, 96
    sd      a0,4041(sp)
    mul     a0,a1,a2
    mv      a2, a2
    sw      a1,4033(sp)
    add     a1,a0,a2
    sw      a0,4025(sp)
    li      a0, 0
    sw      a1,4017(sp)
    li      a1, 1
    sw      a2,4057(sp)
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    li      a2, 75
    sd      a0,4001(sp)
    mul     a0,a1,a2
    mv      a2, a2
    sw      a1,3993(sp)
    add     a1,a0,a2
    sw      a0,3985(sp)
    li      a0, 0
    sw      a1,3977(sp)
    li      a1, 1
    sw      a2,4017(sp)
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    li      a2, -77
    sd      a0,3961(sp)
    mul     a0,a1,a2
    mv      a2, a2
    sw      a1,3953(sp)
    add     a1,a0,a2
    sw      a0,3945(sp)
    li      a0, 0
    sw      a1,3937(sp)
    li      a1, 1
    sw      a2,3977(sp)
    li      a2, 1
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 10
    mv      a2, a2
    sd      a0,3921(sp)
    mul     a0,a1,a2
    mv      a1, a1
    sw      a2,3913(sp)
    add     a2,a0,a1
    sw      a0,3905(sp)
    li      a0, 0
    sw      a1,3937(sp)
    li      a1, 1
    sw      a2,3897(sp)
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, -92
    mv      a2, a2
    sd      a0,3881(sp)
    mul     a0,a1,a2
    mv      a1, a1
    sw      a2,3873(sp)
    add     a2,a0,a1
    sw      a0,3865(sp)
    li      a0, 0
    sw      a1,3897(sp)
    li      a1, 1
    sw      a2,3857(sp)
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    li      a2, -123
    sd      a0,3841(sp)
    mul     a0,a1,a2
    mv      a2, a2
    sw      a1,3833(sp)
    add     a1,a0,a2
    sw      a0,3825(sp)
    li      a0, 0
    sw      a1,3817(sp)
    li      a1, 1
    sw      a2,3857(sp)
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 41
    mv      a2, a2
    sd      a0,3801(sp)
    mul     a0,a1,a2
    mv      a1, a1
    sw      a2,3793(sp)
    add     a2,a0,a1
    sw      a0,3785(sp)
    li      a0, 0
    sw      a1,3817(sp)
    li      a1, 1
    sw      a2,3777(sp)
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    li      a1, 42
    mv      a2, a2
    sd      a0,3761(sp)
    mul     a0,a1,a2
    mv      a1, a1
    sw      a2,3753(sp)
    add     a2,a0,a1
    sw      a0,3745(sp)
    li      a0, 0
    sw      a1,3777(sp)
    li      a1, 1
    sw      a2,3737(sp)
    li      a2, 0
    add     a0,a0,a3
    slli a0,a0,3
    add     a0,a0,sp
    add     a0,a0,a0
    mv      a1, a1
    li      a2, 67
    sd      a0,3721(sp)
    mul     a0,a1,a2
    mv      a2, a2
    sw      a1,3713(sp)
    add     a1,a0,a2
    sw      s1,4561(sp)
    sw      s2,4545(sp)
    sw      s3,4553(sp)
    sw      s4,4665(sp)
    sw      s5,4657(sp)
    sd      s6,4641(sp)
    sd      s7,4529(sp)
    sw      s8,4633(sp)
    sw      s9,4505(sp)
    sw      s10,4625(sp)
    sd      s11,4609(sp)
    sw      a1,3697(sp)
    sw      a0,3705(sp)
    mv      a0, a0
    call    relu_reg
    sw      a0,3689(sp)
    li      a1, 46
    mul     s1,a0,a1
    li      s2, -70
    mv      s3, s3
    mul     s4,s2,s3
    li      s5, -15
    mv      s6, s6
    mul     s7,s5,s6
    li      s8, -62
    mv      s9, s9
    mul     s10,s8,s9
    mv      s11, s11
    li      a1, -114
    mul     s2,s11,a1
    mv      a1, a1
    li      s5, -13
    mul     s8,a1,s5
    add     s5,s8,s2
    sw      a0,3689(sp)
    mv      a0, a0
    sw      a1,4601(sp)
    li      a1, -103
    sw      a2,3737(sp)
    mul     a2,a0,a1
    add     a1,a2,s5
    sw      a0,4561(sp)
    mv      a0, a0
    sw      a1,3617(sp)
    li      a1, 37
    sw      a2,3625(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4521(sp)
    add     a0,a2,a1
    sw      a0,3601(sp)
    li      a0, 53
    sw      a1,3617(sp)
    mv      a1, a1
    sw      a2,3609(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4481(sp)
    add     a1,a2,a0
    sw      a0,3601(sp)
    mv      a0, a0
    sw      a1,3585(sp)
    li      a1, -77
    sw      a2,3593(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4441(sp)
    add     a0,a2,a1
    sw      a0,3569(sp)
    mv      a0, a0
    sw      a1,3585(sp)
    li      a1, 71
    sw      a2,3577(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4401(sp)
    add     a0,a2,a1
    sw      a0,3553(sp)
    mv      a0, a0
    sw      a1,3569(sp)
    li      a1, -75
    sw      a2,3561(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4361(sp)
    add     a0,a2,a1
    sw      a0,3537(sp)
    li      a0, -87
    sw      a1,3553(sp)
    mv      a1, a1
    sw      a2,3545(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4321(sp)
    add     a1,a2,a0
    sw      a0,3537(sp)
    mv      a0, a0
    sw      a1,3521(sp)
    li      a1, -34
    sw      a2,3529(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4281(sp)
    add     a0,a2,a1
    sw      a0,3505(sp)
    li      a0, -73
    sw      a1,3521(sp)
    mv      a1, a1
    sw      a2,3513(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4241(sp)
    add     a1,a2,a0
    sw      a0,3505(sp)
    mv      a0, a0
    sw      a1,3489(sp)
    li      a1, 37
    sw      a2,3497(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4201(sp)
    add     a0,a2,a1
    sw      a0,3473(sp)
    mv      a0, a0
    sw      a1,3489(sp)
    li      a1, -70
    sw      a2,3481(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4665(sp)
    add     a0,a2,a1
    sw      a0,3457(sp)
    li      a0, -46
    sw      a1,3473(sp)
    mv      a1, a1
    sw      a2,3465(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4153(sp)
    add     a1,a2,a0
    sw      a0,3457(sp)
    mv      a0, a0
    sw      a1,3441(sp)
    li      a1, -125
    sw      a2,3449(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4113(sp)
    add     a0,a2,a1
    sw      a1,3441(sp)
    add     a1,a0,s10
    sw      a0,3425(sp)
    li      a0, 36
    sw      a1,3417(sp)
    mv      a1, a1
    sw      a2,3433(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4033(sp)
    add     a1,a2,a0
    sw      a0,3417(sp)
    li      a0, 37
    sw      a1,3401(sp)
    mv      a1, a1
    sw      a2,3409(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3993(sp)
    add     a1,a2,a0
    sw      a0,3401(sp)
    mv      a0, a0
    sw      a1,3385(sp)
    li      a1, -32
    sw      a2,3393(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3953(sp)
    add     a0,a2,a1
    sw      a1,3385(sp)
    add     a1,a0,s7
    sw      a0,3369(sp)
    mv      a0, a0
    sw      a1,3361(sp)
    li      a1, -90
    sw      a2,3377(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3873(sp)
    add     a0,a2,a1
    sw      a0,3345(sp)
    mv      a0, a0
    sw      a1,3361(sp)
    li      a1, 38
    sw      a2,3353(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3833(sp)
    add     a0,a2,a1
    sw      a1,3345(sp)
    add     a1,a0,s4
    sw      a0,3329(sp)
    mv      a0, a0
    sw      a1,3321(sp)
    li      a1, 7
    sw      a2,3337(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3753(sp)
    add     a0,a2,a1
    sw      a0,3305(sp)
    li      a0, -29
    sw      a1,3321(sp)
    mv      a1, a1
    sw      a2,3313(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3713(sp)
    add     a1,a2,a0
    sw      s1,3681(sp)
    sw      s2,3649(sp)
    sw      s3,3793(sp)
    sw      s4,3673(sp)
    sw      s5,3633(sp)
    sw      s6,3913(sp)
    sw      s7,3665(sp)
    sw      s8,3641(sp)
    sw      s9,4073(sp)
    sw      s10,3657(sp)
    sw      s11,4633(sp)
    sw      a1,3289(sp)
    sw      a0,3305(sp)
    mv      a0, a0
    call    relu_reg
    sw      a0,3281(sp)
    li      a1, -23
    mul     s1,a0,a1
    mv      s2, s2
    add     s3,s1,s2
    li      s4, 82
    mv      s5, s5
    mul     s6,s4,s5
    mv      s7, s7
    li      s8, 65
    mul     s9,s7,s8
    li      s10, -84
    mv      s11, s11
    mul     a1,s10,s11
    mv      s4, s4
    li      s8, 46
    mul     s10,s4,s8
    add     s8,s10,a1
    sw      a0,3281(sp)
    mv      a0, a0
    sw      a1,3241(sp)
    li      a1, 83
    sw      a2,3297(sp)
    mul     a2,a0,a1
    add     a1,a2,s8
    sw      a0,4561(sp)
    li      a0, 97
    sw      a1,3209(sp)
    mv      a1, a1
    sw      a2,3217(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4521(sp)
    add     a1,a2,a0
    sw      a0,3209(sp)
    add     a0,a1,s9
    sw      a0,3185(sp)
    mv      a0, a0
    sw      a1,3193(sp)
    li      a1, -121
    sw      a2,3201(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4441(sp)
    add     a0,a2,a1
    sw      a0,3169(sp)
    mv      a0, a0
    sw      a1,3185(sp)
    li      a1, -104
    sw      a2,3177(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4401(sp)
    add     a0,a2,a1
    sw      a0,3153(sp)
    mv      a0, a0
    sw      a1,3169(sp)
    li      a1, -96
    sw      a2,3161(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4361(sp)
    add     a0,a2,a1
    sw      a0,3137(sp)
    mv      a0, a0
    sw      a1,3153(sp)
    li      a1, 82
    sw      a2,3145(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4321(sp)
    add     a0,a2,a1
    sw      a0,3121(sp)
    li      a0, 24
    sw      a1,3137(sp)
    mv      a1, a1
    sw      a2,3129(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4281(sp)
    add     a1,a2,a0
    sw      a0,3121(sp)
    li      a0, 107
    sw      a1,3105(sp)
    mv      a1, a1
    sw      a2,3113(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4241(sp)
    add     a1,a2,a0
    sw      a0,3105(sp)
    li      a0, 71
    sw      a1,3089(sp)
    mv      a1, a1
    sw      a2,3097(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4201(sp)
    add     a1,a2,a0
    sw      a0,3089(sp)
    mv      a0, a0
    sw      a2,3081(sp)
    add     a2,a0,a1
    sw      a0,4657(sp)
    li      a0, -119
    sw      a1,3073(sp)
    mv      a1, a1
    sw      a2,3065(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4153(sp)
    add     a1,a2,a0
    sw      a0,3065(sp)
    li      a0, 104
    sw      a1,3049(sp)
    mv      a1, a1
    sw      a2,3057(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4113(sp)
    add     a1,a2,a0
    sw      a0,3049(sp)
    mv      a0, a0
    sw      a1,3033(sp)
    li      a1, 5
    sw      a2,3041(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4073(sp)
    add     a0,a2,a1
    sw      a0,3017(sp)
    li      a0, 18
    sw      a1,3033(sp)
    mv      a1, a1
    sw      a2,3025(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4033(sp)
    add     a1,a2,a0
    sw      a0,3017(sp)
    mv      a0, a0
    sw      a1,3001(sp)
    li      a1, -13
    sw      a2,3009(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3993(sp)
    add     a0,a2,a1
    sw      a0,2985(sp)
    mv      a0, a0
    sw      a1,3001(sp)
    li      a1, 120
    sw      a2,2993(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3953(sp)
    add     a0,a2,a1
    sw      a0,2969(sp)
    mv      a0, a0
    sw      a1,2985(sp)
    li      a1, 65
    sw      a2,2977(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3913(sp)
    add     a0,a2,a1
    sw      a0,2953(sp)
    li      a0, -2
    sw      a1,2969(sp)
    mv      a1, a1
    sw      a2,2961(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3873(sp)
    add     a1,a2,a0
    sw      a0,2953(sp)
    li      a0, 30
    sw      a1,2937(sp)
    mv      a1, a1
    sw      a2,2945(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3833(sp)
    add     a1,a2,a0
    sw      a0,2937(sp)
    mv      a0, a0
    sw      a1,2921(sp)
    li      a1, 67
    sw      a2,2929(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3793(sp)
    add     a0,a2,a1
    sw      a1,2921(sp)
    add     a1,a0,s6
    sw      a0,2905(sp)
    li      a0, 33
    sw      a1,2897(sp)
    mv      a1, a1
    sw      a2,2913(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3713(sp)
    add     a1,a2,a0
    sw      s1,3273(sp)
    sw      s2,3681(sp)
    sw      s3,3265(sp)
    sw      s4,4601(sp)
    sw      s5,3753(sp)
    sw      s6,3257(sp)
    sw      s7,4481(sp)
    sw      s8,3225(sp)
    sw      s9,3249(sp)
    sw      s10,3233(sp)
    sw      s11,4633(sp)
    sw      a1,2881(sp)
    sw      a0,2897(sp)
    mv      a0, a0
    call    relu_reg
    sw      a0,2873(sp)
    li      a1, -50
    mul     s1,a0,a1
    mv      s2, s2
    add     s3,s1,s2
    mv      s4, s4
    li      s5, 66
    mul     s6,s4,s5
    mv      s7, s7
    li      s8, -15
    mul     s9,s7,s8
    add     s10,s9,s6
    mv      s11, s11
    li      a1, -13
    mul     s5,s11,a1
    add     a1,s5,s10
    li      s8, 48
    sw      a0,2873(sp)
    mv      a0, a0
    sw      a1,2817(sp)
    mul     a1,s8,a0
    mv      s8, s8
    sw      a0,4521(sp)
    add     a0,a1,s8
    sw      a0,2801(sp)
    li      a0, -79
    sw      a1,2809(sp)
    mv      a1, a1
    sw      a2,2889(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4481(sp)
    add     a1,a2,a0
    sw      a0,2801(sp)
    li      a0, 86
    sw      a1,2785(sp)
    mv      a1, a1
    sw      a2,2793(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4441(sp)
    add     a1,a2,a0
    sw      a0,2785(sp)
    mv      a0, a0
    sw      a1,2769(sp)
    li      a1, 67
    sw      a2,2777(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4401(sp)
    add     a0,a2,a1
    sw      a0,2753(sp)
    li      a0, 58
    sw      a1,2769(sp)
    mv      a1, a1
    sw      a2,2761(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4361(sp)
    add     a1,a2,a0
    sw      a0,2753(sp)
    li      a0, 14
    sw      a1,2737(sp)
    mv      a1, a1
    sw      a2,2745(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4321(sp)
    add     a1,a2,a0
    sw      a0,2737(sp)
    li      a0, -33
    sw      a1,2721(sp)
    mv      a1, a1
    sw      a2,2729(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4281(sp)
    add     a1,a2,a0
    sw      a0,2721(sp)
    mv      a0, a0
    sw      a1,2705(sp)
    li      a1, 55
    sw      a2,2713(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4241(sp)
    add     a0,a2,a1
    sw      a0,2689(sp)
    mv      a0, a0
    sw      a1,2705(sp)
    li      a1, 15
    sw      a2,2697(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4201(sp)
    add     a0,a2,a1
    sw      a0,2673(sp)
    mv      a0, a0
    sw      a1,2689(sp)
    li      a1, 52
    sw      a2,2681(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4665(sp)
    add     a0,a2,a1
    sw      a0,2657(sp)
    mv      a0, a0
    sw      a1,2673(sp)
    li      a1, 59
    sw      a2,2665(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4153(sp)
    add     a0,a2,a1
    sw      a0,2641(sp)
    mv      a0, a0
    sw      a1,2657(sp)
    li      a1, -95
    sw      a2,2649(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4113(sp)
    add     a0,a2,a1
    sw      a0,2625(sp)
    mv      a0, a0
    sw      a1,2641(sp)
    li      a1, -110
    sw      a2,2633(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4073(sp)
    add     a0,a2,a1
    sw      a0,2609(sp)
    li      a0, 2
    sw      a1,2625(sp)
    mv      a1, a1
    sw      a2,2617(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4033(sp)
    add     a1,a2,a0
    sw      a0,2609(sp)
    mv      a0, a0
    sw      a1,2593(sp)
    li      a1, 81
    sw      a2,2601(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3993(sp)
    add     a0,a2,a1
    sw      a0,2577(sp)
    mv      a0, a0
    sw      a1,2593(sp)
    li      a1, -8
    sw      a2,2585(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3953(sp)
    add     a0,a2,a1
    sw      a0,2561(sp)
    mv      a0, a0
    sw      a1,2577(sp)
    li      a1, -30
    sw      a2,2569(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3913(sp)
    add     a0,a2,a1
    sw      a0,2545(sp)
    mv      a0, a0
    sw      a1,2561(sp)
    li      a1, -6
    sw      a2,2553(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3873(sp)
    add     a0,a2,a1
    sw      a0,2529(sp)
    li      a0, -90
    sw      a1,2545(sp)
    mv      a1, a1
    sw      a2,2537(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3833(sp)
    add     a1,a2,a0
    sw      a0,2529(sp)
    mv      a0, a0
    sw      a1,2513(sp)
    li      a1, 66
    sw      a2,2521(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3793(sp)
    add     a0,a2,a1
    sw      a0,2497(sp)
    li      a0, -77
    sw      a1,2513(sp)
    mv      a1, a1
    sw      a2,2505(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3753(sp)
    add     a1,a2,a0
    sw      a0,2497(sp)
    mv      a0, a0
    sw      a1,2481(sp)
    li      a1, 15
    sw      a2,2489(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3713(sp)
    add     a0,a2,a1
    sw      s1,2865(sp)
    sw      s2,3265(sp)
    sw      s3,2857(sp)
    sw      s4,4633(sp)
    sw      s5,2825(sp)
    sw      s6,2849(sp)
    sw      s7,4601(sp)
    sw      s8,2817(sp)
    sw      s9,2841(sp)
    sw      s10,2833(sp)
    sw      s11,4561(sp)
    sw      a0,2465(sp)
    mv      a0, a0
    call    relu_reg
    sw      a0,2457(sp)
    li      s1, -95
    mul     s2,a0,s1
    mv      s3, s3
    add     s4,s2,s3
    li      s5, -72
    mv      s6, s6
    mul     s7,s5,s6
    mv      s8, s8
    li      s9, 82
    mul     s10,s8,s9
    add     s11,s10,s7
    li      s1, -54
    mv      s5, s5
    mul     s9,s1,s5
    add     s1,s9,s11
    sw      a0,2457(sp)
    mv      a0, a0
    sw      a1,2481(sp)
    li      a1, -116
    sw      a2,2473(sp)
    mul     a2,a0,a1
    add     a1,a2,s1
    sw      a0,4521(sp)
    li      a0, -112
    sw      a1,2385(sp)
    mv      a1, a1
    sw      a2,2393(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4481(sp)
    add     a1,a2,a0
    sw      a0,2385(sp)
    li      a0, -50
    sw      a1,2369(sp)
    mv      a1, a1
    sw      a2,2377(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4441(sp)
    add     a1,a2,a0
    sw      a0,2369(sp)
    mv      a0, a0
    sw      a1,2353(sp)
    li      a1, -16
    sw      a2,2361(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4401(sp)
    add     a0,a2,a1
    sw      a0,2337(sp)
    li      a0, -10
    sw      a1,2353(sp)
    mv      a1, a1
    sw      a2,2345(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4361(sp)
    add     a1,a2,a0
    sw      a0,2337(sp)
    mv      a0, a0
    sw      a1,2321(sp)
    li      a1, 112
    sw      a2,2329(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4321(sp)
    add     a0,a2,a1
    sw      a0,2305(sp)
    mv      a0, a0
    sw      a1,2321(sp)
    li      a1, 114
    sw      a2,2313(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4281(sp)
    add     a0,a2,a1
    sw      a0,2289(sp)
    li      a0, 112
    sw      a1,2305(sp)
    mv      a1, a1
    sw      a2,2297(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4241(sp)
    add     a1,a2,a0
    sw      a0,2289(sp)
    mv      a0, a0
    sw      a1,2273(sp)
    li      a1, -21
    sw      a2,2281(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4201(sp)
    add     a0,a2,a1
    sw      a0,2257(sp)
    li      a0, 38
    sw      a1,2273(sp)
    mv      a1, a1
    sw      a2,2265(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4665(sp)
    add     a1,a2,a0
    sw      a0,2257(sp)
    li      a0, 114
    sw      a1,2241(sp)
    mv      a1, a1
    sw      a2,2249(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4153(sp)
    add     a1,a2,a0
    sw      a0,2241(sp)
    mv      a0, a0
    sw      a1,2225(sp)
    li      a1, 64
    sw      a2,2233(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4113(sp)
    add     a0,a2,a1
    sw      a0,2209(sp)
    mv      a0, a0
    sw      a1,2225(sp)
    mv      a1, a1
    sw      a2,2217(sp)
    add     a2,a0,a1
    sw      a0,3657(sp)
    li      a0, -13
    sw      a1,2209(sp)
    mv      a1, a1
    sw      a2,2201(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4033(sp)
    add     a1,a2,a0
    sw      a0,2201(sp)
    mv      a0, a0
    sw      a1,2185(sp)
    li      a1, 101
    sw      a2,2193(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3993(sp)
    add     a0,a2,a1
    sw      a0,2169(sp)
    li      a0, 55
    sw      a1,2185(sp)
    mv      a1, a1
    sw      a2,2177(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3953(sp)
    add     a1,a2,a0
    sw      a0,2169(sp)
    mv      a0, a0
    sw      a2,2161(sp)
    add     a2,a0,a1
    sw      a0,3665(sp)
    li      a0, 121
    sw      a1,2153(sp)
    mv      a1, a1
    sw      a2,2145(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3873(sp)
    add     a1,a2,a0
    sw      a0,2145(sp)
    li      a0, -74
    sw      a1,2129(sp)
    mv      a1, a1
    sw      a2,2137(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3833(sp)
    add     a1,a2,a0
    sw      a0,2129(sp)
    mv      a0, a0
    sw      a1,2113(sp)
    li      a1, -102
    sw      a2,2121(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3793(sp)
    add     a0,a2,a1
    sw      a0,2097(sp)
    li      a0, 68
    sw      a1,2113(sp)
    mv      a1, a1
    sw      a2,2105(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3753(sp)
    add     a1,a2,a0
    sw      a0,2097(sp)
    li      a0, 81
    sw      a1,2081(sp)
    mv      a1, a1
    sw      a2,2089(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3713(sp)
    add     a1,a2,a0
    sw      s1,2401(sp)
    sw      s2,2449(sp)
    sw      s3,2857(sp)
    sw      s4,2441(sp)
    sw      s5,4561(sp)
    sw      s6,4633(sp)
    sw      s7,2433(sp)
    sw      s8,4601(sp)
    sw      s9,2409(sp)
    sw      s10,2425(sp)
    sw      s11,2417(sp)
    sw      a1,2065(sp)
    sw      a0,2081(sp)
    mv      a0, a0
    call    relu_reg
    sw      a0,2057(sp)
    li      a1, 32
    mul     s1,a0,a1
    mv      s2, s2
    add     s3,s1,s2
    li      s4, 125
    mv      s5, s5
    mul     s6,s4,s5
    li      s7, -124
    mv      s8, s8
    mul     s9,s7,s8
    mv      s10, s10
    li      s11, 49
    mul     a1,s10,s11
    add     s4,a1,s9
    li      s7, 3
    mv      s11, s11
    sw      a0,2057(sp)
    mul     a0,s7,s11
    add     s7,a0,s4
    sw      a0,2001(sp)
    li      a0, 79
    sw      a1,2017(sp)
    mv      a1, a1
    sw      a2,2073(sp)
    mul     a2,a0,a1
    add     a0,a2,s7
    sw      a0,1977(sp)
    li      a0, 15
    sw      a1,4521(sp)
    mv      a1, a1
    sw      a2,1985(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4481(sp)
    add     a1,a2,a0
    sw      a0,1977(sp)
    li      a0, -93
    sw      a1,1961(sp)
    mv      a1, a1
    sw      a2,1969(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4441(sp)
    add     a1,a2,a0
    sw      a0,1961(sp)
    mv      a0, a0
    sw      a1,1945(sp)
    li      a1, 116
    sw      a2,1953(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4401(sp)
    add     a0,a2,a1
    sw      a0,1929(sp)
    mv      a0, a0
    sw      a1,1945(sp)
    li      a1, -95
    sw      a2,1937(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4361(sp)
    add     a0,a2,a1
    sw      a0,1913(sp)
    li      a0, 5
    sw      a1,1929(sp)
    mv      a1, a1
    sw      a2,1921(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4321(sp)
    add     a1,a2,a0
    sw      a0,1913(sp)
    mv      a0, a0
    sw      a1,1897(sp)
    li      a1, 12
    sw      a2,1905(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4281(sp)
    add     a0,a2,a1
    sw      a0,1881(sp)
    li      a0, 59
    sw      a1,1897(sp)
    mv      a1, a1
    sw      a2,1889(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4241(sp)
    add     a1,a2,a0
    sw      a0,1881(sp)
    li      a0, -114
    sw      a1,1865(sp)
    mv      a1, a1
    sw      a2,1873(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4201(sp)
    add     a1,a2,a0
    sw      a0,1865(sp)
    li      a0, -101
    sw      a1,1849(sp)
    mv      a1, a1
    sw      a2,1857(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4665(sp)
    add     a1,a2,a0
    sw      a0,1849(sp)
    li      a0, -96
    sw      a1,1833(sp)
    mv      a1, a1
    sw      a2,1841(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4153(sp)
    add     a1,a2,a0
    sw      a0,1833(sp)
    li      a0, 66
    sw      a1,1817(sp)
    mv      a1, a1
    sw      a2,1825(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4113(sp)
    add     a1,a2,a0
    sw      a0,1817(sp)
    li      a0, 75
    sw      a1,1801(sp)
    mv      a1, a1
    sw      a2,1809(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4073(sp)
    add     a1,a2,a0
    sw      a0,1801(sp)
    add     a0,a1,s6
    sw      a0,1777(sp)
    mv      a0, a0
    sw      a1,1785(sp)
    li      a1, -70
    sw      a2,1793(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3993(sp)
    add     a0,a2,a1
    sw      a0,1761(sp)
    li      a0, -16
    sw      a1,1777(sp)
    mv      a1, a1
    sw      a2,1769(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3953(sp)
    add     a1,a2,a0
    sw      a0,1761(sp)
    mv      a0, a0
    sw      a1,1745(sp)
    li      a1, -63
    sw      a2,1753(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3913(sp)
    add     a0,a2,a1
    sw      a0,1729(sp)
    li      a0, -116
    sw      a1,1745(sp)
    mv      a1, a1
    sw      a2,1737(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3873(sp)
    add     a1,a2,a0
    sw      a0,1729(sp)
    li      a0, 101
    sw      a1,1713(sp)
    mv      a1, a1
    sw      a2,1721(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3833(sp)
    add     a1,a2,a0
    sw      a0,1713(sp)
    li      a0, -104
    sw      a1,1697(sp)
    mv      a1, a1
    sw      a2,1705(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3793(sp)
    add     a1,a2,a0
    sw      a0,1697(sp)
    mv      a0, a0
    sw      a2,1689(sp)
    add     a2,a0,a1
    sw      a0,3257(sp)
    li      a0, 8
    sw      a1,1681(sp)
    mv      a1, a1
    sw      a2,1673(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3713(sp)
    add     a1,a2,a0
    sw      s1,2049(sp)
    sw      s2,2441(sp)
    sw      s3,2041(sp)
    sw      s4,2009(sp)
    sw      s5,4033(sp)
    sw      s6,2033(sp)
    sw      s7,1993(sp)
    sw      s8,4633(sp)
    sw      s9,2025(sp)
    sw      s10,4601(sp)
    sw      s11,4561(sp)
    sw      a1,1657(sp)
    sw      a0,1673(sp)
    mv      a0, a0
    call    relu_reg
    sw      a0,1649(sp)
    li      a1, -3
    mul     s1,a0,a1
    mv      s2, s2
    add     s3,s1,s2
    mv      s4, s4
    li      s5, -67
    mul     s6,s4,s5
    li      s7, 118
    mv      s8, s8
    mul     s9,s7,s8
    li      s10, 95
    mv      s11, s11
    mul     a1,s10,s11
    add     s5,a1,s9
    mv      s7, s7
    li      s10, -117
    sw      a0,1649(sp)
    mul     a0,s7,s10
    add     s10,a0,s5
    sw      a0,1593(sp)
    li      a0, -32
    sw      a1,1609(sp)
    mv      a1, a1
    sw      a2,1665(sp)
    mul     a2,a0,a1
    add     a0,a2,s10
    sw      a0,1569(sp)
    li      a0, -47
    sw      a1,4521(sp)
    mv      a1, a1
    sw      a2,1577(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4481(sp)
    add     a1,a2,a0
    sw      a0,1569(sp)
    mv      a0, a0
    sw      a1,1553(sp)
    li      a1, -23
    sw      a2,1561(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4441(sp)
    add     a0,a2,a1
    sw      a0,1537(sp)
    li      a0, 11
    sw      a1,1553(sp)
    mv      a1, a1
    sw      a2,1545(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4401(sp)
    add     a1,a2,a0
    sw      a0,1537(sp)
    li      a0, 122
    sw      a1,1521(sp)
    mv      a1, a1
    sw      a2,1529(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4361(sp)
    add     a1,a2,a0
    sw      a0,1521(sp)
    li      a0, 83
    sw      a1,1505(sp)
    mv      a1, a1
    sw      a2,1513(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4321(sp)
    add     a1,a2,a0
    sw      a0,1505(sp)
    mv      a0, a0
    sw      a1,1489(sp)
    li      a1, -123
    sw      a2,1497(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4281(sp)
    add     a0,a2,a1
    sw      a0,1473(sp)
    mv      a0, a0
    sw      a1,1489(sp)
    li      a1, -31
    sw      a2,1481(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4241(sp)
    add     a0,a2,a1
    sw      a0,1457(sp)
    mv      a0, a0
    sw      a1,1473(sp)
    li      a1, 110
    sw      a2,1465(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4201(sp)
    add     a0,a2,a1
    sw      a0,1441(sp)
    mv      a0, a0
    sw      a1,1457(sp)
    li      a1, 125
    sw      a2,1449(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4665(sp)
    add     a0,a2,a1
    sw      a1,1441(sp)
    add     a1,a0,s6
    sw      a0,1425(sp)
    li      a0, -65
    sw      a1,1417(sp)
    mv      a1, a1
    sw      a2,1433(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4113(sp)
    add     a1,a2,a0
    sw      a0,1417(sp)
    li      a0, -117
    sw      a1,1401(sp)
    mv      a1, a1
    sw      a2,1409(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4073(sp)
    add     a1,a2,a0
    sw      a0,1401(sp)
    mv      a0, a0
    sw      a2,1393(sp)
    add     a2,a0,a1
    sw      a0,2033(sp)
    li      a0, 12
    sw      a1,1385(sp)
    mv      a1, a1
    sw      a2,1377(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3993(sp)
    add     a1,a2,a0
    sw      a0,1377(sp)
    li      a0, -30
    sw      a1,1361(sp)
    mv      a1, a1
    sw      a2,1369(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3953(sp)
    add     a1,a2,a0
    sw      a0,1361(sp)
    mv      a0, a0
    sw      a1,1345(sp)
    li      a1, 85
    sw      a2,1353(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3913(sp)
    add     a0,a2,a1
    sw      a0,1329(sp)
    li      a0, 72
    sw      a1,1345(sp)
    mv      a1, a1
    sw      a2,1337(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3873(sp)
    add     a1,a2,a0
    sw      a0,1329(sp)
    mv      a0, a0
    sw      a1,1313(sp)
    li      a1, 50
    sw      a2,1321(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3833(sp)
    add     a0,a2,a1
    sw      a0,1297(sp)
    li      a0, 49
    sw      a1,1313(sp)
    mv      a1, a1
    sw      a2,1305(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3793(sp)
    add     a1,a2,a0
    sw      a0,1297(sp)
    mv      a0, a0
    sw      a1,1281(sp)
    li      a1, -63
    sw      a2,1289(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3753(sp)
    add     a0,a2,a1
    sw      a0,1265(sp)
    li      a0, -23
    sw      a1,1281(sp)
    mv      a1, a1
    sw      a2,1273(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3713(sp)
    add     a1,a2,a0
    sw      s1,1641(sp)
    sw      s2,2041(sp)
    sw      s3,1633(sp)
    sw      s4,4153(sp)
    sw      s5,1601(sp)
    sw      s6,1625(sp)
    sw      s7,4561(sp)
    sw      s8,4633(sp)
    sw      s9,1617(sp)
    sw      s10,1585(sp)
    sw      s11,4601(sp)
    sw      a1,1249(sp)
    sw      a0,1265(sp)
    mv      a0, a0
    call    relu_reg
    sw      a0,1241(sp)
    li      a1, -106
    mul     s1,a0,a1
    mv      s2, s2
    add     s3,s1,s2
    li      s4, 94
    mv      s5, s5
    mul     s6,s4,s5
    li      s7, -6
    mv      s8, s8
    mul     s9,s7,s8
    add     s10,s9,s6
    mv      s11, s11
    li      a1, -39
    mul     s4,s11,a1
    add     a1,s4,s10
    li      s7, 120
    sw      a0,1241(sp)
    mv      a0, a0
    sw      a1,1185(sp)
    mul     a1,s7,a0
    mv      s7, s7
    sw      a0,4521(sp)
    add     a0,a1,s7
    sw      a0,1169(sp)
    mv      a0, a0
    sw      a1,1177(sp)
    mv      a1, a1
    sw      a2,1257(sp)
    add     a2,a0,a1
    sw      a0,3249(sp)
    li      a0, -99
    sw      a1,1169(sp)
    mv      a1, a1
    sw      a2,1161(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4441(sp)
    add     a1,a2,a0
    sw      a0,1161(sp)
    li      a0, -63
    sw      a1,1145(sp)
    mv      a1, a1
    sw      a2,1153(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4401(sp)
    add     a1,a2,a0
    sw      a0,1145(sp)
    mv      a0, a0
    sw      a1,1129(sp)
    li      a1, 39
    sw      a2,1137(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4361(sp)
    add     a0,a2,a1
    sw      a0,1113(sp)
    li      a0, 116
    sw      a1,1129(sp)
    mv      a1, a1
    sw      a2,1121(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4321(sp)
    add     a1,a2,a0
    sw      a0,1113(sp)
    mv      a0, a0
    sw      a1,1097(sp)
    li      a1, 110
    sw      a2,1105(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4281(sp)
    add     a0,a2,a1
    sw      a0,1081(sp)
    li      a0, 27
    sw      a1,1097(sp)
    mv      a1, a1
    sw      a2,1089(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4241(sp)
    add     a1,a2,a0
    sw      a0,1081(sp)
    li      a0, -38
    sw      a1,1065(sp)
    mv      a1, a1
    sw      a2,1073(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4201(sp)
    add     a1,a2,a0
    sw      a0,1065(sp)
    li      a0, 6
    sw      a1,1049(sp)
    mv      a1, a1
    sw      a2,1057(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4665(sp)
    add     a1,a2,a0
    sw      a0,1049(sp)
    li      a0, 102
    sw      a1,1033(sp)
    mv      a1, a1
    sw      a2,1041(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4153(sp)
    add     a1,a2,a0
    sw      a0,1033(sp)
    li      a0, -34
    sw      a1,1017(sp)
    mv      a1, a1
    sw      a2,1025(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4113(sp)
    add     a1,a2,a0
    sw      a0,1017(sp)
    mv      a0, a0
    sw      a1,1001(sp)
    li      a1, 34
    sw      a2,1009(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4073(sp)
    add     a0,a2,a1
    sw      a0,985(sp)
    li      a0, -5
    sw      a1,1001(sp)
    mv      a1, a1
    sw      a2,993(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4033(sp)
    add     a1,a2,a0
    sw      a0,985(sp)
    li      a0, -68
    sw      a1,969(sp)
    mv      a1, a1
    sw      a2,977(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3993(sp)
    add     a1,a2,a0
    sw      a0,969(sp)
    li      a0, 52
    sw      a1,953(sp)
    mv      a1, a1
    sw      a2,961(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3953(sp)
    add     a1,a2,a0
    sw      a0,953(sp)
    li      a0, 96
    sw      a1,937(sp)
    mv      a1, a1
    sw      a2,945(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3913(sp)
    add     a1,a2,a0
    sw      a0,937(sp)
    li      a0, -95
    sw      a1,921(sp)
    mv      a1, a1
    sw      a2,929(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3873(sp)
    add     a1,a2,a0
    sw      a0,921(sp)
    mv      a0, a0
    sw      a1,905(sp)
    li      a1, 29
    sw      a2,913(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3833(sp)
    add     a0,a2,a1
    sw      a0,889(sp)
    mv      a0, a0
    sw      a1,905(sp)
    mv      a1, a1
    sw      a2,897(sp)
    add     a2,a0,a1
    sw      a0,3673(sp)
    li      a0, 76
    sw      a1,889(sp)
    mv      a1, a1
    sw      a2,881(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3753(sp)
    add     a1,a2,a0
    sw      a0,881(sp)
    li      a0, 26
    sw      a1,865(sp)
    mv      a1, a1
    sw      a2,873(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3713(sp)
    add     a1,a2,a0
    sw      s1,1233(sp)
    sw      s2,1633(sp)
    sw      s3,1225(sp)
    sw      s4,1193(sp)
    sw      s5,4633(sp)
    sw      s6,1217(sp)
    sw      s7,1185(sp)
    sw      s8,4601(sp)
    sw      s9,1209(sp)
    sw      s10,1201(sp)
    sw      s11,4561(sp)
    sw      a1,849(sp)
    sw      a0,865(sp)
    mv      a0, a0
    call    relu_reg
    sw      a0,841(sp)
    li      a1, 127
    mul     s1,a0,a1
    mv      s2, s2
    add     s3,s1,s2
    li      s4, -125
    mv      s5, s5
    mul     s6,s4,s5
    mv      s7, s7
    li      s8, -75
    mul     s9,s7,s8
    add     s10,s9,s6
    li      s11, -22
    mv      a1, a1
    mul     s4,s11,a1
    add     s8,s4,s10
    li      s11, -100
    sw      a0,841(sp)
    mv      a0, a0
    sw      a1,4561(sp)
    mul     a1,s11,a0
    add     s11,a1,s8
    sw      a0,4521(sp)
    li      a0, -110
    sw      a1,777(sp)
    mv      a1, a1
    sw      a2,857(sp)
    mul     a2,a0,a1
    add     a0,a2,s11
    sw      a0,753(sp)
    mv      a0, a0
    sw      a1,4481(sp)
    li      a1, -31
    sw      a2,761(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4441(sp)
    add     a0,a2,a1
    sw      a0,737(sp)
    mv      a0, a0
    sw      a1,753(sp)
    li      a1, -106
    sw      a2,745(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4401(sp)
    add     a0,a2,a1
    sw      a0,721(sp)
    li      a0, 29
    sw      a1,737(sp)
    mv      a1, a1
    sw      a2,729(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4361(sp)
    add     a1,a2,a0
    sw      a0,721(sp)
    li      a0, 87
    sw      a1,705(sp)
    mv      a1, a1
    sw      a2,713(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4321(sp)
    add     a1,a2,a0
    sw      a0,705(sp)
    li      a0, -42
    sw      a1,689(sp)
    mv      a1, a1
    sw      a2,697(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4281(sp)
    add     a1,a2,a0
    sw      a0,689(sp)
    li      a0, 105
    sw      a1,673(sp)
    mv      a1, a1
    sw      a2,681(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4241(sp)
    add     a1,a2,a0
    sw      a0,673(sp)
    li      a0, -43
    sw      a1,657(sp)
    mv      a1, a1
    sw      a2,665(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4201(sp)
    add     a1,a2,a0
    sw      a0,657(sp)
    li      a0, -60
    sw      a1,641(sp)
    mv      a1, a1
    sw      a2,649(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4665(sp)
    add     a1,a2,a0
    sw      a0,641(sp)
    li      a0, -21
    sw      a1,625(sp)
    mv      a1, a1
    sw      a2,633(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4153(sp)
    add     a1,a2,a0
    sw      a0,625(sp)
    li      a0, 7
    sw      a1,609(sp)
    mv      a1, a1
    sw      a2,617(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4113(sp)
    add     a1,a2,a0
    sw      a0,609(sp)
    li      a0, -121
    sw      a1,593(sp)
    mv      a1, a1
    sw      a2,601(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4073(sp)
    add     a1,a2,a0
    sw      a0,593(sp)
    li      a0, -94
    sw      a1,577(sp)
    mv      a1, a1
    sw      a2,585(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,4033(sp)
    add     a1,a2,a0
    sw      a0,577(sp)
    li      a0, 67
    sw      a1,561(sp)
    mv      a1, a1
    sw      a2,569(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3993(sp)
    add     a1,a2,a0
    sw      a0,561(sp)
    mv      a0, a0
    sw      a1,545(sp)
    li      a1, -4
    sw      a2,553(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3953(sp)
    add     a0,a2,a1
    sw      a0,529(sp)
    mv      a0, a0
    sw      a1,545(sp)
    li      a1, 47
    sw      a2,537(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3913(sp)
    add     a0,a2,a1
    sw      a0,513(sp)
    li      a0, -8
    sw      a1,529(sp)
    mv      a1, a1
    sw      a2,521(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3873(sp)
    add     a1,a2,a0
    sw      a0,513(sp)
    li      a0, -31
    sw      a1,497(sp)
    mv      a1, a1
    sw      a2,505(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3833(sp)
    add     a1,a2,a0
    sw      a0,497(sp)
    li      a0, -18
    sw      a1,481(sp)
    mv      a1, a1
    sw      a2,489(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3793(sp)
    add     a1,a2,a0
    sw      a0,481(sp)
    li      a0, 126
    sw      a1,465(sp)
    mv      a1, a1
    sw      a2,473(sp)
    mul     a2,a0,a1
    mv      a0, a0
    sw      a1,3753(sp)
    add     a1,a2,a0
    sw      a0,465(sp)
    mv      a0, a0
    sw      a1,449(sp)
    li      a1, -106
    sw      a2,457(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3713(sp)
    add     a0,a2,a1
    sw      s1,833(sp)
    sw      s2,1225(sp)
    sw      s3,825(sp)
    sw      s4,793(sp)
    sw      s5,4633(sp)
    sw      s6,817(sp)
    sw      s7,4601(sp)
    sw      s8,785(sp)
    sw      s9,809(sp)
    sw      s10,801(sp)
    sw      s11,769(sp)
    sw      a0,433(sp)
    mv      a0, a0
    call    relu_reg
    sw      a0,425(sp)
    li      s1, 77
    mul     s2,a0,s1
    mv      s3, s3
    add     s4,s2,s3
    mv      s5, s5
    li      s6, 46
    mul     s7,s5,s6
    mv      s8, s8
    li      s9, 80
    mul     s10,s8,s9
    add     s11,s10,s7
    mv      s1, s1
    li      s6, -4
    mul     s9,s1,s6
    add     s6,s9,s11
    sw      a0,425(sp)
    mv      a0, a0
    sw      a1,449(sp)
    li      a1, 47
    sw      a2,441(sp)
    mul     a2,a0,a1
    add     a1,a2,s6
    sw      a0,4521(sp)
    mv      a0, a0
    sw      a1,353(sp)
    li      a1, 110
    sw      a2,361(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4481(sp)
    add     a0,a2,a1
    sw      a0,337(sp)
    mv      a0, a0
    sw      a1,353(sp)
    li      a1, 113
    sw      a2,345(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4441(sp)
    add     a0,a2,a1
    sw      a0,321(sp)
    mv      a0, a0
    sw      a1,337(sp)
    li      a1, 47
    sw      a2,329(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4401(sp)
    add     a0,a2,a1
    sw      a0,305(sp)
    mv      a0, a0
    sw      a1,321(sp)
    li      a1, 65
    sw      a2,313(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4361(sp)
    add     a0,a2,a1
    sw      a0,289(sp)
    mv      a0, a0
    sw      a1,305(sp)
    li      a1, -39
    sw      a2,297(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4321(sp)
    add     a0,a2,a1
    sw      a0,273(sp)
    mv      a0, a0
    sw      a1,289(sp)
    li      a1, 34
    sw      a2,281(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4281(sp)
    add     a0,a2,a1
    sw      a0,257(sp)
    mv      a0, a0
    sw      a1,273(sp)
    li      a1, -102
    sw      a2,265(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4241(sp)
    add     a0,a2,a1
    sw      a0,241(sp)
    mv      a0, a0
    sw      a1,257(sp)
    li      a1, -75
    sw      a2,249(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4201(sp)
    add     a0,a2,a1
    sw      a0,225(sp)
    mv      a0, a0
    sw      a1,241(sp)
    li      a1, -106
    sw      a2,233(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4665(sp)
    add     a0,a2,a1
    sw      a0,209(sp)
    mv      a0, a0
    sw      a1,225(sp)
    mv      a1, a1
    sw      a2,217(sp)
    add     a2,a0,a1
    sw      a0,1625(sp)
    mv      a0, a0
    sw      a1,209(sp)
    li      a1, -111
    sw      a2,201(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4113(sp)
    add     a0,a2,a1
    sw      a0,185(sp)
    mv      a0, a0
    sw      a1,201(sp)
    li      a1, 47
    sw      a2,193(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4073(sp)
    add     a0,a2,a1
    sw      a0,169(sp)
    mv      a0, a0
    sw      a1,185(sp)
    li      a1, -59
    sw      a2,177(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,4033(sp)
    add     a0,a2,a1
    sw      a0,153(sp)
    mv      a0, a0
    sw      a1,169(sp)
    li      a1, 50
    sw      a2,161(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3993(sp)
    add     a0,a2,a1
    sw      a0,137(sp)
    mv      a0, a0
    sw      a1,153(sp)
    li      a1, -120
    sw      a2,145(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3953(sp)
    add     a0,a2,a1
    sw      a0,121(sp)
    mv      a0, a0
    sw      a1,137(sp)
    li      a1, 64
    sw      a2,129(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3913(sp)
    add     a0,a2,a1
    sw      a0,105(sp)
    mv      a0, a0
    sw      a1,121(sp)
    li      a1, -123
    sw      a2,113(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3873(sp)
    add     a0,a2,a1
    sw      a0,89(sp)
    mv      a0, a0
    sw      a1,105(sp)
    li      a1, -103
    sw      a2,97(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3833(sp)
    add     a0,a2,a1
    sw      a0,73(sp)
    mv      a0, a0
    sw      a1,89(sp)
    li      a1, -82
    sw      a2,81(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3793(sp)
    add     a0,a2,a1
    sw      a0,57(sp)
    mv      a0, a0
    sw      a1,73(sp)
    li      a1, 23
    sw      a2,65(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3753(sp)
    add     a0,a2,a1
    sw      a0,41(sp)
    mv      a0, a0
    sw      a1,57(sp)
    li      a1, 85
    sw      a2,49(sp)
    mul     a2,a0,a1
    mv      a1, a1
    sw      a0,3713(sp)
    add     a0,a2,a1
    sw      s1,4561(sp)
    sw      s2,417(sp)
    sw      s3,825(sp)
    sw      s4,409(sp)
    sw      s5,4633(sp)
    sw      s6,369(sp)
    sw      s7,401(sp)
    sw      s8,4601(sp)
    sw      s9,377(sp)
    sw      s10,393(sp)
    sw      s11,385(sp)
    sw      a0,25(sp)
    mv      a0, a0
    call    relu_reg
    sw      a0,17(sp)
    li      s1, 39
    mul     s2,a0,s1
    mv      s3, s3
    add     s4,s2,s3
    li      s5, 0
    slt     s6,s5,s4
    bnez    s6, .branch_true_30
    j       .branch_false_30
.branch_true_30:
    li      s7, 4721
    add     s7,sp,s7
    ld      ra,0(s7)
    li      s8, 4705
    add     s8,sp,s8
    ld      s0,0(s8)
    li      a0, 1
    li      s9, 4729
    li      s9, 4729
    add     sp,s9,sp
    ret
.branch_false_30:
.L4_0:
    mv      ra, s7
    mv      s0, s8
    li      a0, 0
    li      s9, 4729
    add     sp,s9,sp
    ret
    .globl main
    .type main,@function
main:
    addi    sp,sp,-216
    sd      ra,208(sp)
    sd      s0,192(sp)
    addi    s0,sp,216
.L0_0:
    sw      s2,9(sp)
    sw      s3,409(sp)
    sw      s4,1(sp)
    sb      s6,0(sp)
    sd      s7,4721(sp)
    sd      s8,4705(sp)
    call    getint
    sw      a0,17(sp)
    sw      a0,184(sp)
    mv      s1, a0
    j       .while.head_38
.while.head_38:
    li      s2, 0
    slt     s3,s2,s1
    bnez    s3, .while.body_38
    j       .while.exit_38
.while.body_38:
    mv      s4, s2
    j       .while.head_42
.while.head_42:
    li      s5, 5
    slt     s6,s4,s5
    bnez    s6, .while.body_42
    j       .while.exit_42
.while.body_42:
    mv      s7, s2
    j       .while.head_46
.while.head_46:
    slt     s8,s7,s5
    bnez    s8, .while.body_46
    j       .while.exit_46
.while.body_46:
    li      s9, 0
    mul     s10,s5,s4
    add     s9,s9,s10
    li      s11, 1
    add     s9,s9,s10
    slli s9,s9,2
    add     s9,s9,sp
    add     s9,s9,s9
    sw      s1,176(sp)
    sb      s3,71(sp)
    sw      s4,64(sp)
    sb      s6,63(sp)
    sw      s7,56(sp)
    sb      s8,55(sp)
    sd      s9,47(sp)
    sw      s10,168(sp)
    call    getint
    sw      a0,184(sp)
    sw      a0,40(sp)
    mv      s1, s1
    sd      a0,0(s1)
    mv      s2, s2
    li      s3, 1
    add     s4,s2,s3
    j       .while.head_46
.while.exit_46:
    mv      s5, s5
    add     s6,s5,s3
    j       .while.head_42
.while.exit_42:
    sd      s1,47(sp)
    sw      s2,56(sp)
    sw      s4,32(sp)
    sw      s5,64(sp)
    sw      s6,24(sp)
    sw      a0,40(sp)
    mv      a0, a0
    call    model
    sw      a0,16(sp)
    li      s1, 0
    xor     s2,a0,s1
    sltiu   s2,s2,1
    xori    s2,s2,1
    bnez    s2, .branch_true_52
    j       .branch_false_52
.branch_true_52:
    sb      s2,15(sp)
    sw      a0,16(sp)
    li      a0, 99
    call    putch
    li      a0, 97
    call    putch
    li      a0, 116
    call    putch
    li      a0, 10
    call    putch
    j       .L1_0
.branch_false_52:
    li      a0, 100
    call    putch
    li      a0, 111
    call    putch
    li      a0, 103
    call    putch
    li      a0, 10
    call    putch
    j       .L1_0
.L1_0:
.L2_0:
    mv      a0, a0
    li      s1, 1
    sub     s2,a0,s1
    j       .while.head_38
.while.exit_38:
    ld      ra,208(sp)
    ld      s0,192(sp)
    li      a0, 0
    addi    sp,sp,216
    ret
