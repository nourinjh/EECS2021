a:	DF	1.21, 5.85, -7.3, 23.1, -5.55
b:	DF	3.14, -2.1, 44.2, 11.0, -7.77
      
      	addi x4, x0, 0
	addi x7, x0, 0
	addi x5, x0, 0
	addi x6, x0, 5

loop: 	fld f8, a(x4)
	fld f9, b(x7)
	fmul.d f10, f8, f9
	fadd.d f11, f11, f10
	addi x4, x4, 8
	addi x7, x7, 8
	addi x5, x5, 1
	beq x5, x6, end
	beq x0, x0, loop

end:  	fsd f11, d(x0)
      	ebreak x0, x0, 0
d: 	DM	1