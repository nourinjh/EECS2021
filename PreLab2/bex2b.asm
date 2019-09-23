src: DD 121, 33, -5, 242, -45, -12, 0

add x6, x0, x0
add x8, x0, x0

loop: ld x5, src(x6)
beq x5, x0, end
bge x5, x7, skip
bge x7, x5, addc

addc:   add x7, x0, x5
	add x8, x0, x6
	addi x6, x6, 8
	beq x0, x0, loop
skip: addi x6, x6, 8
	beq x0, x0, loop

end: 	ld x9, src(x0)
	sd x7, src(x0)
	sd x9, src(x8)
	ebreak x0, x0, 0