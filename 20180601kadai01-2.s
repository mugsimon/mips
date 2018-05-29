	.data
prmpt1:	.asciiz	"x = "
ans:	.asciiz	"20x+3 = "
newln:	.asciiz "\n"
	.text
main:
	li	$v0, 4
	la	$a0, prmpt1
	syscall
	li	$v0, 5
	syscall
	move 	$t0, $v0
	li	$t1, 20
	mult	$t0, $t1
	mflo	$t0
	add	$t0, $t0, 3
	li	$v0, 4
	la	$a0, ans
	syscall
	li	$v0, 1
	move	$a0, $t0
	syscall
	li	$v0, 4
	la	$a0, newln
	syscall
	jr	$ra
	
