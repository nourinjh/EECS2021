s1: DC "integer to store:\0"
s2: DC "memory address:\0"

addi x30, x0, s1
addi x31, x0, s2

ecall x0, x30, 4 ;integer
ecall x6, x28, 5 
ecall x0, x31, 4
ecall x7, x28, 5 

sd x6, 0(x7)