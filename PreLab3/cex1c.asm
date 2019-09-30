s0:	DC	"Enter i:\0"
s1:	DC	"Divisors:\0"
	addi x5, x0, s0
	ecall x1, x5, 4
	ecall x6, x0, 5
	add x8, x6, x0
	addi x8, x8, -1
	addi x10, x0, s1
	ecall x0, x10, 4
	ecall x0, x6, 0
loop:   rem x7, x6, x8
	beq x7, x0, out
	addi x8, x8, -1
	bne x8, x0, loop
out:	ecall x0, x8, 0
	addi x8,x8,-1
	beq x0, x0, loop