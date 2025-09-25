# Lab 05 - Combinatorial Logic

In this lab, you’ve learned real world applications of digital logic, as well
as how to assemble your own Verilog modules. In addition, you’ve learned how
the constraints file maps your inputs and outputs to real pins on the FPGA.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

### Lab Questions
## Summary
In this lab we were given truth tables for, circuit A and circuit B. From the circuit A truth table we built a boolean expression to represent the circuit, and used the maxterms, from which we used a K-MAP of the POS to simplify the expression. From the circuit B truth table we built another simplified boolean expression to represent the circuit, but this time we used the minterms from the truth table, and then we used an SOP expression from the K-MAP. The main point of this lab was when we connected the circuits together, utilizing the output of circuit A as the input of circuit B for the first switch, so A had 4 switches, and B had 4, but one of the switches was assigned from the output of circuit A to the first switch of circuit B. We had to implement our own Top.v where we set switches, LEDs, and connected circuits, and we had to comment out the constraints for the correct pins. The professor showed us the truth table in Vivado, and explained more about verifying the simulation in the screen with the green squares.   
### 1 - Explain the role of the Top Level file.
The role of this file is to direct the inputs and outputs of both circuit_ a and circuit_b modules. We use switches and LEDs to accomplish this task putting the output of circuit_a as the input a for circuit_b.
### 2 - Explain the function of the Constraints file.
The function of the constraints file is to pull a name from top.v, operate on it, and then pass in a dictionary of properties. The constraints file has switches and LEDs mapped to GPIO pins, we uncommented the portions we utilized for the circuits in the lab.
### 3 - Was the selection of Minterm and Maxterm correct for each circuit? What would you have chosen?
Yes, the selection was correct for each circuit. If given the choice, I would have chosen Minterm for both circuits. The reason for this is that the circuit_a’s Minterms could have been grouped in one block instead of three. The groups for circuit_b would be about the same either way, so I would have stuck with Minterm as well. 
