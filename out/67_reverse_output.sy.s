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
              #                    regtab 
              #                          Define reverse_0 [n_16] -> reverse_ret_0 
    .globl reverse
    .type reverse,@function
reverse:
              #                    mem layout:|ra_reverse:8 at 32|s0_reverse:8 at 24|n:4 at 20|next:4 at 16|temp_0_cmp:1 at 15|none:3 at 12|temp_1_ret_of_getint:4 at 8|temp_2_ret_of_getint:4 at 4|temp_3_arithop:4 at 0
    addi    sp,sp,-40
              #                    store to ra_reverse_0 in mem offset legal
    sd      ra,32(sp)
              #                    store to s0_reverse_0 in mem offset legal
    sd      s0,24(sp)
    addi    s0,sp,40
              #                          alloc i32 next_18 
              #                          alloc i1 temp_0_cmp_20 
              #                          alloc i32 temp_1_ret_of_getint_22 
              #                          alloc i32 temp_2_ret_of_getint_25 
              #                          alloc i32 temp_3_arithop_25 
              #                    regtab     a0:Freed { symidx: n_16, tracked: true } | 
              #                          label L1_0: 
.L1_0:
              #                          new_var next_18:i32 
              #                          jump label: L2_0 
    j       .L2_0
              #                    regtab     a0:Freed { symidx: n_16, tracked: true } | 
              #                          label L2_0: 
.L2_0:
              #                          new_var temp_0_cmp_20:i1 
              #                          temp_0_cmp_20 = icmp i32 Sle n_16, 1_0 
              #                    occupy a0 with n_16
              #                    occupy a1 with 1_0
    li      a1, 1
              #                    occupy a2 with temp_0_cmp_20
    slt     a2,a1,a0
    xori    a2,a2,1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          br i1 temp_0_cmp_20, label branch_true_21, label branch_false_21 
              #                    occupy a2 with temp_0_cmp_20
              #                    free a2
              #                    occupy a2 with temp_0_cmp_20
    bnez    a2, .branch_true_21
              #                    free a2
    j       .branch_false_21
              #                    regtab     a0:Freed { symidx: n_16, tracked: true } |     a2:Freed { symidx: temp_0_cmp_20, tracked: true } | 
              #                          label branch_true_21: 
.branch_true_21:
              #                          new_var temp_1_ret_of_getint_22:i32 
              #                          temp_1_ret_of_getint_22 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to n_16 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with n_16
              #                    store to temp_0_cmp_20 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_0_cmp_20
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_1_ret_of_getint_22 in mem offset legal
    sw      a0,8(sp)
              #                          next_18 = i32 temp_1_ret_of_getint_22 
              #                    occupy a0 with temp_1_ret_of_getint_22
              #                    occupy a1 with next_18
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                           Call void putint_0(next_18) 
              #                    saved register dumping to mem
              #                    store to temp_1_ret_of_getint_22 in mem offset legal
    sw      a0,8(sp)
              #                    release a0 with temp_1_ret_of_getint_22
              #                    store to next_18 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with next_18
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_next_18_0
              #                    load from next_18 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    putint
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab     a0:Freed { symidx: n_16, tracked: true } |     a2:Freed { symidx: temp_0_cmp_20, tracked: true } | 
              #                          label branch_false_21: 
.branch_false_21:
              #                          new_var temp_2_ret_of_getint_25:i32 
              #                          temp_2_ret_of_getint_25 =  Call i32 getint_0() 
              #                    saved register dumping to mem
              #                    store to n_16 in mem offset legal
    sw      a0,20(sp)
              #                    release a0 with n_16
              #                    store to temp_0_cmp_20 in mem offset legal
    sb      a2,15(sp)
              #                    release a2 with temp_0_cmp_20
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    arg load ended


    call    getint
              #                    store to temp_2_ret_of_getint_25 in mem offset legal
    sw      a0,4(sp)
              #                          next_18 = i32 temp_2_ret_of_getint_25 
              #                    occupy a0 with temp_2_ret_of_getint_25
              #                    occupy a1 with next_18
    mv      a1, a0
              #                    free a0
              #                    free a1
              #                          new_var temp_3_arithop_25:i32 
              #                          temp_3_arithop_25 = Sub i32 n_16, 1_0 
              #                    occupy a2 with n_16
              #                    load from n_16 in mem


    lw      a2,20(sp)
              #                    occupy a3 with 1_0
    li      a3, 1
              #                    occupy a4 with temp_3_arithop_25
              #                    regtab:    a0:Freed { symidx: temp_2_ret_of_getint_25, tracked: true } |     a1:Freed { symidx: next_18, tracked: true } |     a2:Occupied { symidx: n_16, tracked: true, occupy_count: 1 } |     a3:Occupied { symidx: 1_0, tracked: false, occupy_count: 1 } |     a4:Occupied { symidx: temp_3_arithop_25, tracked: true, occupy_count: 1 } | 


    sub     a4,a2,a3
              #                    free a2
              #                    free a3
              #                    free a4
              #                           Call void reverse_0(temp_3_arithop_25) 
              #                    saved register dumping to mem
              #                    store to temp_2_ret_of_getint_25 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_2_ret_of_getint_25
              #                    store to next_18 in mem offset legal
    sw      a1,16(sp)
              #                    release a1 with next_18
              #                    store to n_16 in mem offset legal
    sw      a2,20(sp)
              #                    release a2 with n_16
              #                    store to temp_3_arithop_25 in mem offset legal
    sw      a4,0(sp)
              #                    release a4 with temp_3_arithop_25
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_temp_3_arithop_25_0
              #                    load from temp_3_arithop_25 in mem


    lw      a0,0(sp)
              #                    arg load ended


    call    reverse
              #                           Call void putint_0(next_18) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_next_18_0
              #                    load from next_18 in mem


    lw      a0,16(sp)
              #                    arg load ended


    call    putint
              #                          jump label: L3_0 
    j       .L3_0
              #                    regtab 
              #                          label L3_0: 
.L3_0:
              #                    regtab 
              #                    regtab 
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|i:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                          alloc i32 i_30 
              #                    regtab 
              #                          label L0_0: 
.L0_0:
              #                          i_30 = i32 200_0 
              #                    occupy a0 with i_30
    li      a0, 200
              #                    free a0
              #                           Call void reverse_0(i_30) 
              #                    saved register dumping to mem
              #                    store to i_30 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with i_30
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_i_30_0
              #                    load from i_30 in mem


    lw      a0,4(sp)
              #                    arg load ended


    call    reverse
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab 
