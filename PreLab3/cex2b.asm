d: 	DF 	1.0

	ecall x6, x0, 5 ;input
	fld f2, d(x0)
	fadd.d f10, f10, f2
	addi x7, x0, 1

big:	beq x6, x0, end
	add x5, x0, x6
	addi x7, x0, 1
	beq x0, x0, loop

loop:	beq x5, x0, decr
	mul x7, x7, x5
	addi x5, x5, -1
	beq x0, x0, loop

decr: 	addi x6, x6, -1
	fcvt.d.l f1, x7
	fdiv.d f9, f2, f1
	fadd.d f10, f10, f9
	beq x0, x0, big

end:	ebreak x0,x0,0

