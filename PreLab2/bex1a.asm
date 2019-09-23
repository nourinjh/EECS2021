c: DD 1024, 2048, 4096, 8192
add x5, x0, x0
ld x1, c(x5)
addi x5, x5, 8
ld x2, c(x5)
addi x5, x5, 8
ld x3, c(x5)
addi x5, x5, 8
ld x4, c(x5)
add x6, x1, x2
add x7, x6, x3
add x8, x7, x4 
srli x9, x8, 2

