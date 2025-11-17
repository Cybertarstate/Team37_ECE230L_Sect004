# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions
### Summary
In this lab, we implemented two types of counters. We used a ripple counter which counted down from 7 to 0, and reset back to 7. Ripple counter for this lab consists of 3 T_flip-flops. All ripple counters are set at 1’b1. The first T flip flop, changes every clock cycle, the second changes every 2, and the third changes every 4. This is achieved by passing the output of Q from t0 into the clock of t1, and the output of t1 into the clock of t2. We also implemented a modulo counter, which counts from 0 to 5, and resets on the positive clock edge into 6. This was achieved by wiring a D flip-flop into each bit of a 3-bit adder, which was fed into comparison logic to indicate when the counter needed to be reset. The logic was simple (q2 & ~q1 & q0). This means that the counter reads 5, and resets on the positive clock edge going into 6, so it has 6 states, 0-5. The output of the comparison logic gets fed into a 4th D-flip-flop, which sends the output signal from its Q to tell all the other flipflops to reset.

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
A full cycle in Hz is defined as a transition from high to low, and then back to high. So, we actually have to do two entire full counts to get one single Hz. 

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
The reason why the ring counter's output goes to all 1's on the first clock cycle is that our T values were set to 1. The Q of the first toggle is used as the clock for the second toggle, and the Q of the second toggle is used as the clock for the third toggle.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
We would need a width of 100,000 for our ring counter to get an output of ~1KHz because we have an input of 100MHz.

