	.data
newln:	.asciiz "\n"
	.text
main:
	li	$t0, 20
	li	$t1, 0
	li	$t2, 1
	li	$t3, 1
loop:	li	$v0, 1
	move	$a0, $t1
	syscall
	li	$v0, 4
	la	$a0, newln
	syscall
	move	$t4, $t2
	add	$t2, $t1, $t2
	move	$t1, $t4
	sub	$t0, $t0, $t3
	bne	$t0, $zero, loop
end:	jr	$ra
