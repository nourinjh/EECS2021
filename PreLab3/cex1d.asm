s0: 	DC "Find all divisors.\0"
s1: 	DC "Enter i:\0"
s4: 	DC "prime"
s5: 	DC "not prime"
	
	addi x13,x0,1;flag for prime or not
	addi x5, x0, s0;text start
	ecall x0, x5, 4 
	addi x5, x0, s1
	ecall x1, x5, 4 
	ecall x6, x0, 5
	addi x29,x0,s4
	addi x30,x0,s5;text end
	
	add x8,x6,x0;initilize copy of input
	addi x10,x0,8; initilize memory counter 

	ecall x0,x8,0;display first number
	addi x8,x8,-1;decrement copy
	sd x6,0(x0);save first number to mem
	
loop:	rem x7,x6,x8;start loop
	beq x7,x0,dis
	addi x8,x8,-1
	bne x8,x0,loop 
	
dis:	sd x8,0(x10);save to mem
	addi x10,x10,8;mem counter
	addi x8,x8,-1;loop counter
	ld x11,x0,8;load second mem address
	bne x11,x13,out
	ecall x0,x29,4
	beq x0,x0,loop
	
out:	ecall x0,x30,4
	beq x0,x0,loop