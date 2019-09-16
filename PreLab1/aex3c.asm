addi x6, x0, 0x123
andi x6, x6, 0xff0
addi x7, x0, 0x123
andi x7, x7, 0x00f
srli x6, x6, 4
slli x7, x7, 60
add x5, x6, x7