# Number Theory: Addition

In this lab you've learned the basics of number theory as it relates to addition.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions
##Summary
In this lab we implemented 3 separate circuits. We started with a simple XOR circuit that had 2 switches and 1 output LED. Then we did a half adder circuit that had a sum output and a carry output, the half adder is a combination of a XOR gate, and a AND gate. Our third circuit we implemented was for a full 2 bit adder, and this one was a combination of XOR for the sum and then for the carryout it was (A and B) or (CIN AND A) OR (CIN AND B), then 2 complete full adders were combined where our carry out was the carry in for the other full adder. Once our circuit was complete, we were able to put it on the board and see a 3 bit combination of LED`s where the maximum possible value from our circuit was 6.

### 1 - How might you add more than two bits together?
We would add more than two bits together by using the carry outs of the full adders chain linked together known as ripple-carry adder. This would allow for more than just 6 as the largest number.

### 2 - What is the importance of the XOR gate in an adder?
The XOR gate in an adder is used for the sum. It is doing the mathematical addition of a single digit, it adds any combination of 1 and 0, we require a different boolean expression to handle the carry.

### 3 - What is the largest number a two bit adder can handle? What happens when you go over?
The largest number a two bit adder can handle is 6. It would be 7 if there was a carry in on the first adder, but thats not the case in our design, the max is 011, which gives six. 111 would give 7. So sure, technically if by some mythical happening  you could go over our circuit by an additional 1, it would have to wrap around to be a carry-in on the first adder in the design. Otherwise, exception handle -> throw error”Flash all LED`s 20 times”, boombadabing.
