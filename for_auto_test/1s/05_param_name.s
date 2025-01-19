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
              #                     16   Define f_0 "f_16_0," -> f_ret_0 
    .globl f
    .type f,@function
f:
              #                    mem layout:|ra_f:8 at 16|s0_f:8 at 8|f _s16 _i0:4 at 4|temp_0_arithop _s18 _i0:4 at 0
    addi    sp,sp,-24
              #                    store to ra_f_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_f_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     19   alloc i32 [temp_0_arithop_18] 
              #                    regtab     a0:Freed { symidx: f_16_0, tracked: true } |  released_gpr_count:18,released_fpr_count:24
              #                          label L1_0: 
.L1_0:
              #                     20   temp_0_arithop_18_0 = Mul i32 f_16_0, 2_0 
              #                    occupy a1 with temp_0_arithop_18_0
              #                    occupy a0 with f_16_0
    slliw a1,a0,1
              #                    free a0
              #                    free a1
              #                     30   untrack f_16_0 
              #                    occupy a0 with f_16_0
              #                    release a0 with f_16_0
              #                     21   ret temp_0_arithop_18_0 
              #                    load from ra_f_0 in mem
    ld      ra,16(sp)
              #                    load from s0_f_0 in mem
    ld      s0,8(sp)
              #                    occupy a1 with temp_0_arithop_18_0
              #                    store to temp_0_arithop_18_0 in mem offset legal
    sw      a1,0(sp)
              #                    release a1 with temp_0_arithop_18_0
              #                    occupy a0 with temp_0_arithop_18_0
              #                    load from temp_0_arithop_18_0 in mem


    lw      a0,0(sp)
    addi    sp,sp,24
              #                    free a0
    ret
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                     17   Define main_0 "" -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 16|s0_main:8 at 8|temp_1_ret_of_f _s21 _i0:4 at 4|none:4 at 0
    addi    sp,sp,-24
              #                    store to ra_main_0 in mem offset legal
    sd      ra,16(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,8(sp)
    addi    s0,sp,24
              #                     25   alloc i32 [temp_1_ret_of_f_21] 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                     26   temp_1_ret_of_f_21_0 =  Call i32 f_0(10_0) 
              #                    saved register dumping to mem
              #                    caller-saved register dumped to mem
              #                    arg load start
              #                    occupy a0 with _anonymous_of_10_0_0
    li      a0, 10
              #                    arg load ended


    call    f
              #                     27   ret temp_1_ret_of_f_21_0 
              #                    load from ra_main_0 in mem
    ld      ra,16(sp)
              #                    load from s0_main_0 in mem
    ld      s0,8(sp)
              #                    occupy a0 with temp_1_ret_of_f_21_0
              #                    store to temp_1_ret_of_f_21_0 in mem offset legal
    sw      a0,4(sp)
              #                    release a0 with temp_1_ret_of_f_21_0
              #                    occupy a0 with temp_1_ret_of_f_21_0
              #                    load from temp_1_ret_of_f_21_0 in mem


    lw      a0,4(sp)
    addi    sp,sp,24
              #                    free a0
    ret
