a: DD 0xAAAABBBBCCCCDDDD
b: DD 0x4444333322221111
   sum:      DM 1
   diff:     DM 1
   revdiff:  DM 1
   and:      DM 1
   or:       DM 1
   xor:      DM 1
   nota:     DM 1
   notb:     DM 1

   ld x5, a(x0)
   ld x6, b(x0)

   add x7, x5, x6
   sd x7, sum(x0)

   sub x7, x5, x6
   sd x7, diff(x0)

   sub x7, x6, x5
   sd x7, diff(x0)
   
   and x7, x5, x6
   sd x7, and(x0)

   or x7, x5, x6
   sd x7, or(x0)

   xor x7, x5, x6  
   sd x7, xor(x0) 
   
   xori x7, x5, -1
   sd x7, nota(x0)

   xori x7, x6, -1
   sd x7, notb(x0)
 