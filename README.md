# Iverilog_MIPS
simulation for MIPS

__Module List :__
---

Piyarach :

 MODULE      | FINISH | TEST | LINK FILE TEST | LINK OUTPUT RESULT
-------------|--------|------|--------------- | ------------------
  ALU        |        |      |                |             
  ALUControl | [YES](https://github.com/Piyarach/Iverilog_MIPS/blob/master/src/aluControl.v)  | [YES](https://github.com/Piyarach/Iverilog_MIPS/blob/master/test-bench/aluControl_tb.v)  | [link](https://github.com/Piyarach/Iverilog_MIPS/blob/master/test-bench/output_aluControl)  | [link](https://github.com/Piyarach/Iverilog_MIPS/blob/master/test-result/result_aluControl)            
  ADD        | [YES](https://github.com/Piyarach/Iverilog_MIPS/blob/master/src/adder_32_bit.v)   | [YES](https://github.com/Piyarach/Iverilog_MIPS/blob/master/test-bench/adder_32_tb.v)  | [link](https://github.com/Piyarach/Iverilog_MIPS/blob/master/test-bench/output_adder)  | [link](https://github.com/Piyarach/Iverilog_MIPS/blob/master/test-result/result_adder)             
  SUBTRACT   | [YES](https://github.com/Piyarach/Iverilog_MIPS/blob/master/src/subtract_32_bit.v)    | [YES](https://github.com/Piyarach/Iverilog_MIPS/blob/master/test-bench/subtract_32_bit_tb.v)  | [link](https://github.com/Piyarach/Iverilog_MIPS/blob/master/test-bench/output_subtract) | [link](https://github.com/Piyarach/Iverilog_MIPS/blob/master/test-result/result_subtract)              
  SLT        | [YES](https://github.com/Piyarach/Iverilog_MIPS/blob/master/src/slt_32_bit.v)    | [YES](https://github.com/Piyarach/Iverilog_MIPS/blob/master/test-bench/slt_32_bit_tb.v)  | [link](https://github.com/Piyarach/Iverilog_MIPS/blob/master/test-bench/output_slt) | [link](https://github.com/Piyarach/Iverilog_MIPS/blob/master/test-result/result_slt)              
  
Wirod :

 MODULE                 | FINISH | TEST | LINK FILE TEST | LINK OUTPUT RESULT
------------------------|--------|------|--------------- | ------------------
  Control               |        |      |                |             
  MUX ( 6 bit ,32 bit ) |        |      |                |                
  OR , AND , XOR , NOR  |        |      |                |                
  PC                    |        |      |                |                
  SHIFT LEFT            |        |      |                |   
  Jump                  |        |      |                |
  Branch                |        |      |                |
  
Sitthisak :

 MODULE                          | FINISH | TEST | LINK FILE TEST | LINK OUTPUT RESULT
---------------------------------|--------|------|--------------- | ------------------
  CPU                            |        |      |                |                             
  Register                       |        |      |                |                
  Memory ( Instruction , Data )  |        |      |                |                
  LW , SW                        |        |      |                |                
  Sign Extend                    |        |      |                |  
  
  ---
  
  __FOR UPLOAD FILES :__
  * Upload modules files to folder "src"
  * Upload test_bench files and output files to folder "test-bench"
  * For output files (build file ) please enter file's name like "output_(module_name)"
  * For output result , Upload to folder test-result. ( Can be image or text file )
  
---

 __FOR RUN OUTPUT :__
  1. Go to folder "test-bench" and looking for file that has foreword like "output_(module_name)" , OR click link via table in "LINK FILE TEST" column.
  2. Copy output file to your folder.
  3. Run Command Prompt (cmd) and go to your files' folder.
  4. Input command " vvp (output_file) " 

_Example :_ `C:\iverilog\test_bench\vvp output_adder`
  
---
