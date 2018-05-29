	.data
prmpt1:	.asciiz	"1st integer = "
prmpt2:	.asciiz "2nd integer = "
ans:	.asciiz	"sum = "
newln:	.asciiz	"\n"
	.text
main:
	li	$v0, 4
	la	$a0, prmpt1
	syscall
	li	$v0, 5
	syscall
	move 	$t1, $v0
	li	$v0, 4
	la	$a0, prmpt2
	syscall
	li	$v0, 5
	syscall
	move	$t2, $v0
	add	$t3, $t1, $2
	li	$v0, 4
	la	$a0, ans
	syscall
	li	$v0, 1
	move	$a0, $t3
	syscall
	li	$v0, 4
	la	$a0, newln
	syscall
	jr	$ra
