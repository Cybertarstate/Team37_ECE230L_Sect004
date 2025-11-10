# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary
For this lab, we created three different flip flops including a D flip flop, JK flip flop, and a T flip flop. We started with the D flip and used “posedge” to make it edge triggered and set an initial state of 0. For the JK flip flop, it builds onto the previously built D flipflop and renovated it to be a JK flip flop. The T flip flop then utilizes the JK flip flop using T as both J and K allowing us to properly toggle. Finally, the top.v is used to assign switches, leds, and a button to the appropriate flip flop instances.

## Lab Questions

### What is different between edge and level sensitive circuits?
The difference between an edge sensitive circuit and a level sensitive circuit is that a level sensitive circuit allows change as long as the enable is active while the edge sensitive circuit only allows change during the short period of the clock edge.

### Why is it important to declare initial state?
It is important to declare an initial state because it gives us a definite starting point. Without declaring an initial state the board has no way of knowing the state of any of the various pieces of memory within. 

### What do edge sensitive circuits let us build?
Edge sensitive circuits let us build synchronous systems, including counters for clocks.
