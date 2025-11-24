# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Summary
In this lab we took a finite state machine consisting of 5 states. We used two different methods of implementing the state machine via "one hot encoding" and "binary encoding" from d flip flops to store the state. Each method had us derive logic from the state table to build a boolean equation to determine what the next state would be. Each one was its own module, and the modules were piped to top.v and wired to one switch, 2 buttons, and 10 LEDs representing the various z,w, and state values for each implementation of the FSM.

### Compare and contrast One Hot and Binary encodings
One hot encoding has a d flip flop for each state. Binary encoding has a d flip flop for log_2(n-states). The logic for the one hot encoding can come directly from the state table, and each state will have a next state type representation where the logic is based on what is needed to get there. The binary encoding is a little bit more involved, each state is encoding to be repesented as a binary number. A k-map must be derived from the state table inorder to determine the boolean equation of each state, each bit needs its own k-map aswell and to make the k-map one must focus on the particular bit being k-mapped and the particular bits of the states from the state table. 

### Which method did your team find easier, and why?
we found one hot encoding to be easier, it was just more straight forward. It took us a bit of time to wrap our head around how to even derive something k-mappable from the binary encoding. Indeed, it was neat to see.

### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.
Certainly if we have many states we would want to use binary encoding, in a 3 bit binary implementation we could represent up to 7 states with 3 d flip flops, while for one hot encoding we would have to have one d flip flop for each state. As you can see with one hot encoding we would begin to run out of LEDs very quickly.

