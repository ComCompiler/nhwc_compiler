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
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     16   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 8|s0_main:8 at 0
    addi    sp,sp,-16
              #                    store to ra_main_0 in mem offset legal
    sd      ra,8(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,0(sp)
    addi    s0,sp,16
              #                     18   alloc i32 [a_17] 
              #                     20   alloc i32 [b_17] 
              #                     22   alloc i32 [c_17] 
              #                     24   alloc i32 [d_17] 
              #                     26   alloc i32 [e_17] 
              #                     28   alloc i32 [f_17] 
              #                     83   alloc i1 [temp_0__1144] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     17   (nop) 
              #                     19   (nop) 
              #                     21   (nop) 
              #                     23   (nop) 
              #                     25   (nop) 
              #                     27   (nop) 
              #                          jump label: L1_0 
    j       .L1_0
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                          jump label: branch_true_25 
    j       .branch_true_25
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     49   label branch_true_25: 
.branch_true_25:
              #                          jump label: branch_true_28 
    j       .branch_true_28
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     55   label branch_true_28: 
.branch_true_28:
              #                          jump label: branch_false_31 
    j       .branch_false_31
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     59   label branch_true_31: 
.branch_true_31:
              #                     48   ret 3_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 3_0
    li      a0, 3
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     60   label branch_false_31: 
.branch_false_31:
              #                          jump label: branch_false_35 
    j       .branch_false_35
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     62   label branch_true_35: 
.branch_true_35:
              #                     46   ret 4_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 4_0
    li      a0, 4
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     63   label branch_false_35: 
.branch_false_35:
              #                          jump label: branch_true_39 
    j       .branch_true_39
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     65   label branch_true_39: 
.branch_true_39:
              #                          jump label: branch_false_42 
    j       .branch_false_42
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     71   label branch_true_42: 
.branch_true_42:
              #                     44   ret 6_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 6_0
    li      a0, 6
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     72   label branch_false_42: 
.branch_false_42:
              #                          jump label: branch_true_46 
    j       .branch_true_46
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     74   label branch_true_46: 
.branch_true_46:
              #                          jump label: branch_true_49 
    j       .branch_true_49
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     79   label branch_true_49: 
.branch_true_49:
              #                     84   (nop) 
              #                          jump label: branch_false_52 
    j       .branch_false_52
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     85   label branch_true_52: 
.branch_true_52:
              #                     42   ret 9_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 9_0
    li      a0, 9
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     86   label branch_false_52: 
.branch_false_52:
              #                     40   ret 10_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 10_0
    li      a0, 10
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab  released_gpr_count:18,released_fpr_count:24
              #                     80   label branch_false_49: 
.branch_false_49:
              #                     38   ret 8_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 8_0
    li      a0, 8
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab  released_gpr_count:17,released_fpr_count:24
              #                     75   label branch_false_46: 
.branch_false_46:
              #                     36   ret 7_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 7_0
    li      a0, 7
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab  released_gpr_count:16,released_fpr_count:24
              #                     66   label branch_false_39: 
.branch_false_39:
              #                     34   ret 5_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 5_0
    li      a0, 5
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab  released_gpr_count:15,released_fpr_count:24
              #                     56   label branch_false_28: 
.branch_false_28:
              #                     32   ret 2_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 2_0
    li      a0, 2
    addi    sp,sp,16
              #                    free a0
    ret
              #                    regtab  released_gpr_count:14,released_fpr_count:24
              #                     50   label branch_false_25: 
.branch_false_25:
              #                     30   ret 1_0 
              #                    load from ra_main_0 in mem
    ld      ra,8(sp)
              #                    load from s0_main_0 in mem
    ld      s0,0(sp)
              #                    occupy a0 with 1_0
    li      a0, 1
    addi    sp,sp,16
              #                    free a0
    ret
