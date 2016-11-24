# Iverilog_MIPS
simulation for MIPS

__Module List :__
---

Piyarach :

 MODULE      | FINISH | TEST | LINK FILE TEST 
-------------|--------|------|---------------
  ALU        |        |      |                             
  ALUControl | [YES](https://github.com/Piyarach/Iverilog_MIPS/blob/master/src/aluControl.v)  | [YES](https://github.com/Piyarach/Iverilog_MIPS/blob/master/test-bench/aluControl_tb.v)  |                
  ADD        | [YES]((https://github.com/Piyarach/Iverilog_MIPS/blob/master/src/adder_32_bit.v)  )    | [YES](https://github.com/Piyarach/Iverilog_MIPS/blob/master/test-bench/adder_32_tb.v)  |                
  SUBTRACT   | [YES](https://github.com/Piyarach/Iverilog_MIPS/blob/master/src/subtract_32_bit.v)    | [YES](https://github.com/Piyarach/Iverilog_MIPS/blob/master/test-bench/subtract_32_bit_tb.v)  |                
  SLT        | [YES](https://github.com/Piyarach/Iverilog_MIPS/blob/master/src/slt_32_bit.v)    | [YES](https://github.com/Piyarach/Iverilog_MIPS/blob/master/test-bench/slt_32_bit_tb.v)  |                
  
Wirod :

 MODULE                 | FINISH | TEST | LINK FILE TEST 
------------------------|--------|------|---------------
  Control               |        |      |                             
  MUX ( 6 bit ,32 bit ) |        |      |                
  OR , AND , XOR , NOR  |        |      |                
  PC                    |        |      |                
  SHIFT LEFT            |        |      |   
  Jump                  |        |      |
  Branch                |        |      |
  
Sitthisak :

 MODULE                          | FINISH | TEST | LINK FILE TEST 
---------------------------------|--------|------|---------------
  CPU                            |        |      |                             
  Register                       |        |      |                
  Memory ( Instruction , Data )  |        |      |                
  LW , SW                        |        |      |                
  Sign Extend                    |        |      |  
  
