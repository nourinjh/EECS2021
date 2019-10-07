exp: DC "12+34-*\0" ;(1+2)*(3-4)=-2 

addi x12, x0, '*' ;0x2a=42 

addi x10, x0, '+' ;0x2b=43 

addi x11, x0, '-' ;0x2d=45 

addi x13, x0, '/' ;0x2f=47 

add sp, x0, x0 ;stack init 

exp1: lb x5, exp(x6) 

beq x5, x0, end ;end of string 

addi x6, x6, 1 

blt x13, x5, num ;number 

beq sp, x0, err1 ;stack empty 

ld x7, 0(sp) ;pop 

addi sp, sp, 8 

beq sp, x0, err1 ;stack empty 

ld x8, 0(sp) ;pop 

addi sp, sp, 8 

beq x5, x10, add 

beq x5, x11, sub 

beq x5, x12, mul 

beq x5, x13, div 

beq x0, x0, err2 ;unknown operation 

exp2: addi sp, sp, -8 

sd x5, 0(sp) ;push 

beq x0, x0, exp1 

num: addi x5, x5, -0x30 ;ASCII->int 

addi sp, sp, -8 

sd x5, 0(sp) ;push 

beq x0, x0, exp1 

add: add x5, x7, x8 

beq x0, x0, exp2 

sub: sub x5, x8, x7 

beq x0, x0, exp2 

mul: mul x5, x8, x7 

beq x0, x0, exp2 

div: div x5, x8, x7 

beq x0, x0, exp2 

err1: ^^^^^^^^ stack empty 

err2: ^^^^^^^^ unknown operation 

end: ^^^^^^^^ end of string 