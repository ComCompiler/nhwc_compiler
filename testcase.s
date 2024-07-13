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
              #                          Define main_0 [] -> main_ret_0 
    .globl main
    .type main,@function
main:
              #                    mem layout:|ra_main:8 at 40|s0_main:8 at 32|a:4 at 28|b:4 at 24|temp_0_arithop:4 at 20|c:4 at 16|temp_1_arithop:4 at 12|d:4 at 8|temp_2_arithop:4 at 4|e:4 at 0
    addi    sp,sp,-48
              #                    store to ra_main_0 in mem offset legal
    sd      ra,40(sp)
              #                    store to s0_main_0 in mem offset legal
    sd      s0,32(sp)
    addi    s0,sp,48
              #                          alloc i32 a_17 
              #                          alloc i32 b_17 
              #                          alloc i32 temp_0_arithop_17 
              #                          alloc i32 c_17 
              #                          alloc i32 temp_1_arithop_17 
              #                          alloc i32 d_17 
              #                          alloc i32 temp_2_arithop_17 
              #                          alloc i32 e_17 
              #                    regtab  released_gpr_count:19,released_fpr_count:24
              #                          label L0_0: 
.L0_0:
              #                          a_17 = i32 3_0 
              #                    occupy a0 with a_17
    li      a0, 3
              #                    free a0
              #                          b_17 = i32 3_0 
              #                    occupy a1 with b_17
    li      a1, 3
              #                    free a1
              #                          new_var temp_0_arithop_17:i32 
              #                          temp_0_arithop_17 = Add i32 a_17, b_17 
              #                    occupy a0 with a_17
              #                    occupy a1 with b_17
              #                    occupy a2 with temp_0_arithop_17
    add     a2,a0,a1
              #                    free a0
              #                    free a1
              #                    free a2
              #                          c_17 = i32 temp_0_arithop_17 
              #                    occupy a2 with temp_0_arithop_17
              #                    occupy a3 with c_17
    mv      a3, a2
              #                    free a2
              #                    free a3
              #                          new_var temp_1_arithop_17:i32 
              #                          temp_1_arithop_17 = Add i32 a_17, 3_0 
              #                    occupy a0 with a_17
              #                    occupy a4 with 3_0
    li      a4, 3
              #                    occupy a5 with temp_1_arithop_17
    add     a5,a0,a4
              #                    free a0
              #                    free a4
              #                    free a5
              #                          d_17 = i32 temp_1_arithop_17 
              #                    occupy a5 with temp_1_arithop_17
              #                    occupy a6 with d_17
    mv      a6, a5
              #                    free a5
              #                    free a6
              #                          new_var temp_2_arithop_17:i32 
              #                          temp_2_arithop_17 = Add i32 a_17, c_17 
              #                    occupy a0 with a_17
              #                    occupy a3 with c_17
              #                    occupy a7 with temp_2_arithop_17
    add     a7,a0,a3
              #                    free a0
              #                    free a3
              #                    free a7
              #                          e_17 = i32 temp_2_arithop_17 
              #                    occupy a7 with temp_2_arithop_17
              #                    occupy s1 with e_17
    mv      s1, a7
              #                    free a7
              #                    free s1
              #                          jump label: exit_2 
    j       .exit_2
              #                    regtab     a0:Freed { symidx: a_17, tracked: true } |     a1:Freed { symidx: b_17, tracked: true } |     a2:Freed { symidx: temp_0_arithop_17, tracked: true } |     a3:Freed { symidx: c_17, tracked: true } |     a5:Freed { symidx: temp_1_arithop_17, tracked: true } |     a6:Freed { symidx: d_17, tracked: true } |     a7:Freed { symidx: temp_2_arithop_17, tracked: true } |     s1:Freed { symidx: e_17, tracked: true } |  released_gpr_count:10,released_fpr_count:24
              #                          label exit_2: 
.exit_2:
              #                          ret 0_0 
              #                    load from ra_main_0 in mem
    ld      ra,40(sp)
              #                    load from s0_main_0 in mem
    ld      s0,32(sp)
              #                    occupy a0 with a_17
              #                    store to a_17 in mem offset legal
    sw      a0,28(sp)
              #                    release a0 with a_17
              #                    occupy a0 with 0_0
    li      a0, 0
    addi    sp,sp,48
              #                    free a0
    ret
