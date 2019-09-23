dir: DC "John" 
     DC "11111"
     DC "Nick" 
     DC "22222" 
     DC "Sara" 
     DC "11111" 
     DC "Nick" 
     DC "33333" 
     DD 0

s1: DC "Enter a phone or a name:"
      addi x28, x0, s1
      ecall x1, x28, 4 ;info string
      ecall x5, x0, 8 
      

loop: ld x6, dir(x7)
      beq x6, x0, end
      beq x5, x6, fnd
      addi x7, x7, 8
      beq x0, x0, loop

fnd: addi x9, x7, 8
     ld x10, dir(x9)
     ecall x0, x10, 3
     addi x7, x7, 8
     beq x0, x0, loop

end: ebreak x0, x0, 0
