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
For this lab, we started with part one by implementing a single-bit memory. Here, we were able to use the always block to assign the input data to “Q” based on the “Enable” value. In part two, we were able to convert the D-latch to 8 bits. Our mux was used to output 1-bit enable wires  based on which input was chosen. We then developed two demuxes, with one for the enable and one for the data, each based on the selector. With the memory system, we used a for loop for working with our 8-bit D-latch and set out instances of mux and two different de_mux. Finally, in our top file, we set our switches, button, and LEDs for our D-latch and for the memory system.

## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
We cannot only use structural Verilog to implement latches because we will run into errors regarding the combinational loop. We would also not have any behavioral logic to later work with the D-latch.

### What is the meaning of always @(*) in a sensitivity block?
The meaning of this always @(*) in a sensitivity block is to allow the data to be always available to change based on input change, given that enable is on.

### What importance is memory to digital circuits?
The importance of memory in digital circuits is to allow input into the system to stop via enable, but the program to still be able to produce appropriate outputs. The outputs can then be changed and worked with based on the previously passed inputs. When we want to then change the memory, we can turn enable back on and accept inputs again. This concept lets us work with data sequentially and lets us work with a stored state.
