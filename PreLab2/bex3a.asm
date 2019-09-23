s1: DC "What is your name?"
s2: DC "Hello "
s3: DC "!"

addi x30, x0, s1

ecall x0, x30, 4 ;info string 
ecall x7, x0, 8

ld x8, s2(x0)
ld x9, s3(x0)

ecall x1, x8, 3
ecall x1, x7, 3
ecall x1, x9, 3