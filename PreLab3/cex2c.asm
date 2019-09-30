s0:	DC	"Enter n:\0"
s1:	DC	"ans:\0"
a:	DF	1.0
	
	addi x5, x0, s0;text stuff
	ecall x1, x5, 4
	ecall x6, x0, 5
	add x7, x6, x0;temp variable
	addi x7, x7, -1;decreciating the var
	add x12, x6, x0
	addi x12, x12, -1
	fld f1, a(x0)
	
loop:   mul x8, x7, x6
	add x6, x0, x8
	addi x7, x7, -1
	bne x7, x0, loop
	addi x5, x0, s1
	ecall x1, x5, 4
	ecall x2, x6, 0

loops:	fcvt.d.l f2, x6
	fdiv.d f5, f1, f2
	fadd.d f6, f6, f5
	addi x12, x12, -1
	bne x12, x0, loops
	;fcvt.l.d x20, f6
	;ecall x2, x20, 0
	ebreak x0, x0, 0  
