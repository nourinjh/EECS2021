a: DC "enter a number"
addi x5,x0,a
addi x9,x0,1;constant for multiplication
addi x11,x0,1;write 1 constant
addi x7,x0,7;div constant for powers of 2
ecall x1,x5,4;out prompt
ecall x6,x0,5;input num
add x14,x0,x6;final bit check
addi x15,x0,2;final bit check
Stack: EQU 0x100000;set stack in memory
lui sp, Stack>>12

;128 64 32 16 8 4 2 1


loop:
    beq x7,x0,end
    srl x10,x6,x7;divide 
    blt x0,x10,write
    addi x7,x7,-1
    sd x0, 0(sp) ;push
    addi sp, sp, -8 ;push

    beq x0,x0,loop

write:
    sll x9,x11,x7;constant for sub
    sub x6,x6,x9
    addi x7,x7,-1
    sd x11, 0(sp) ;push
    addi sp, sp, -8 ;push

    beq x0,x0,loop


end:
    rem x16,x14,x15
    beq x16,x0,final
    sd x11, 0(sp) ;push
    addi sp, sp, -8 ;push

final:
    sd x0, 0(sp) ;push
    addi sp, sp, -8 ;push



ebreak x0,x0,0