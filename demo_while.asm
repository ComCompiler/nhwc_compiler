square:
        addi    sp,sp,-32
        sw      s0,28(sp)
        addi    s0,sp,32
        sw      a0,-20(s0)
        lw      a5,-20(s0)
        neg     a4,a5
        lw      a5,-20(s0)
        mul     a5,a4,a5
        mv      a0,a5
        lw      s0,28(sp)
        addi    sp,sp,32
        jr      ra
m:
        addi    sp,sp,-16
        sw      ra,12(sp)
        sw      s0,8(sp)
        addi    s0,sp,16
        li      a0,3
        call    square
        nop
        mv      a0,a5
        lw      ra,12(sp)
        lw      s0,8(sp)
        addi    sp,sp,16
        jr      ra
k:
        addi    sp,sp,-32
        sw      ra,28(sp)
        sw      s0,24(sp)
        addi    s0,sp,32
        li      a5,4
        sw      a5,-20(s0)
        j       .L5
.L6:
        call    m
        lw      a5,-20(s0)
        addi    a5,a5,1
        sw      a5,-20(s0)
.L5:
        lw      a4,-20(s0)
        li      a5,16
        ble     a4,a5,.L6
        nop
        mv      a0,a5
        lw      ra,28(sp)
        lw      s0,24(sp)
        addi    sp,sp,32
        jr      ra