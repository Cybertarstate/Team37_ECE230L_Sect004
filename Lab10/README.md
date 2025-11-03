# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary
For this lab, we started with part one by implementing a single-bit memory. Here, we were able to reconfigure the given set/reset latch, we used the always block to assign the input data to “Q” based on the change in “Enable or Data” value. Q would only change if Enable was on, while data was being set. In part two, we were able to expand the D-latch to 8 bits. We used a configuration of 2 seperate demultiplexers, one was used to output 1-bit enable wires to ,4, 8 bit D-latch, and the other was used to route 8 bit data to, 4 , 8 bit D-latch, based on which input was chosen from the 2 bit select. We then output each D-latch to multiplexer, and could display 8bit output LED. The lab showed how we could save and maintain memory, switch to a seperate D-latch and save memory, and switch back and see the memory remaining in the output LED from each D-latch. 

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
We cannot only use structural Verilog to implement latches because we will run into errors regarding the combinational loop. We would also not have any behavioral logic to later work with the D-latch.

### What is the meaning of always @(*) in a sensitivity block?
The meaning of this always @(*) in a sensitivity block is to allow the data to be always available to change based on input change, given that enable is on. The * means its all the inputs, we wrote always @(Enable, Data), but you can do the * if your would like to add additional input conditions to be evaluated inside your always block, and not have to write each one out.

### What importance is memory to digital circuits?
The importance of memory in digital circuits is to allow input into the system to stop via enable, but the program to still be able to produce appropriate outputs. The outputs can then be changed and worked with based on the previously passed inputs. When we want to then change the memory, we can turn enable back on and accept inputs again. This concept lets us work with data sequentially and lets us work with a stored state.
