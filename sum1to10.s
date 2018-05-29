	# sum 1 to 10
	.text
	.globl	main
main:	move	$t0, $zero
	li	$t1, 10
loop:	add	$t0, $t0, $t1
	sub	$t1, $t1, 1
	bne	$t1, $zero, loop
	li	$v0, 1
	move	$a0, $t0
	syscall
	jr	$ra
