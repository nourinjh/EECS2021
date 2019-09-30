s0:	DC	"Enter n:\0"
s1:	DC	"Factorial:\0"
	addi x5, x0, s0
	ecall x1, x5, 4
	ecall x6, x0, 5
	addi x7, x6, -1
	addi x7, x7, -1
loop:   add x8, x7, x6
	add x6, x0, x8
	addi x7, x7, -1
	bne x7, x0, loop
	addi x5, x0, s1
	ecall x1, x5, 4
	addi x8, x8, -1
	ecall x0, x8, 0
	