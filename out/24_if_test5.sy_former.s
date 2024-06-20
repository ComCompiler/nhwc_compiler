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

	.section	.text
	.align	4
	.globl	if_if_Else
	.type	if_if_Else, @function
if_if_Else:
.Lif_if_Else$ENTRY:
	li	a0, 25
	ret

	.section	.text
	.align	4
	.globl	main
	.type	main, @function
main:
.Lmain$ENTRY:
	tail	if_if_Else

