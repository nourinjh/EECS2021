dir: DC "John" 
     DC "11111"
     DC "Nick" 
     DC "22222" 
     DC "Sara" 
     DC "11111" 
     DC "Nick" 
     DC "33333" 
     DD 0

s1: DC "Enter a phone or a name\nto search for:"
space: DC " "
nl: DC "\n"

main:   addi x30, x0, s1
	ecall x0, x30, 4
	ecall x7, x0, 8 ;input string
	beq x31, x7, end
	add x5, x0, x0 ;indexer
	addi x19, x0, 1
	
loop: 	ld x6, dir(x5)
	srai x8, x5, 3
	andi x9, x8, 0x1
	beq x6, x0, main
	beq x6, x7, think
	bne x6, x7, incrm

incrm: 	addi x5, x5, 8
	beq x0, x0, loop

think:  beq x9, x19, isnum
	beq x9, x0, isname

isname: addi x1, x1, 1
	addi x10, x5, 8
	ld x11, dir(x10) ;num
	ld x12, space(x0) ;space char
	ld x13, nl(x0) ;new line char

	ecall x1, x6, 3 ;print name
	ecall x1, x12, 3 ;print space
	ecall x1, x11, 3 ;print num
	ecall x1, x13, 3 ;newline
	beq x0, x0, incrm

isnum:  addi x2, x2, 1
	addi x10, x5, -8
	ld x11, dir(x10) ;num
	ld x12, space(x0) ;space char
	ld x13, nl(x0) ; newline char

	ecall x1, x11, 3 ;print name
	ecall x1, x12, 3 ;print space
	ecall x1, x6, 3 ;print num
	ecall x1, x13, 3 ;newline
	beq x0, x0, incrm

end: ebreak x0, x0, 0
