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
	li	$t2, 20
loop:	add	$t1, $t1, $t0
	sub	$t2, $t2, 1
	bne	$t2, $zero, loop
	add	$t1, $t1, 3
	li	$v0, 4
	la	$a0, ans
	syscall
	li	$v0, 1
	move	$a0, $t1
	syscall
	li	$v0, 4
	la	$a0, newln
	syscall
	jr	$ra
	
