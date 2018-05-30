	.data
prmpt1:	.asciiz	"input integer = "
pryes:	.asciiz	"yes"
prno:	.asciiz	"no"
newln:	.asciiz "\n"
	.text
main:
	li	$v0, 4
	la	$a0, prmpt1
	syscall
	li	$v0, 5
	syscall
	move 	$t0, $v0
	li	$t1, 7
	and	$t0, $t0, $t1
 	bne	$t0, $zero, no	
yes:	li	$v0, 4
	la	$a0, pryes
	syscall
	j	end
no:	li	$v0, 4
	la	$a0, prno
	syscall
end:	li	$v0, 4
	la	$a0, newln
	syscall
	jr	$ra
