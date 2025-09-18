# Lab 04 - SOP/POS and KMaps

In this lab, you’ve learned how to apply KMaps, Sum Of Products and Products of
sums to simplify digital logic equations. Then, you’ve proven out that they work
using an implemented design on your Basys3 boards.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary

In this lab we were given a truth table with 4 variables (A,B,C,D). We took that truth table and made an extra long drawn out boolean expression that we implemented in our “Naive.V” code. We then set out to simplify our boolean expression using the K-map. We used the sum of products format and the min terms to simplify the expression from the K-map. Then we used product of sums and simplified the same K-map but this time we used the max terms. Once we verified our expressions were correct we wrote our SOP expression into “minterm.v”, and we wrote our POS expression into “maxterm.v”. We utilized “top.v” to map our “naive.v” to led 0, “minterm.v” to led 1, and “maxterm.v” to led 2. Once all of our expressions were gucci, and our code was in place, we then ran a simulation in the Vivado software to verify that all of our expressions were in sync so that we would not waste time and resources constantly reloading code onto the board. Finally, once we verified our simulation we went through the process of loading code onto the board and verified that our LEDs illuminated when our switches were in the correct position. Ultimately, from this lab we learned to utilize the K-map to reduce extensive truth tables and expressions into a simplified form.

## Lab Questions

### Why are the groups of 1’s (or 0’s) that we select in the KMap able to go across edges?
The reason that the 1’s and 0’s are able to go across edges is that there is only one variable change. This allows the edges to wrap around, creating a cylindrical shape in both directions.

### Why are the names Sum of Products and Products of Sums?
The reason for the Sum of Products (SOP) Product of Sum (POS) naming is where the “or” and “and” gates are placed. For SOP, we are finding the minterms, placing an “and” in between the values and an “or” between each minterm creating the SOP. For POS, we are finding the maxterms, placing an “or” in between the values and an “and” between each maxterm creating the POS. 
### Open the test.v file – how are we able to check that the signals match using XOR?

We can check that the signals match using an XOR, because it will equal 0 if the outputs match and 1 if the outputs are different. Since we want the outputs to never be different, then the if statement will only run if a 0 is not provided by the XOR. This concept can be similarly applied for checking both minterms and maxterms of our boolean expression, since both the SOP and POS are supposed to give us the same result. The naive LED is set to 0, and we made this long dumb expression that we know matches the truth table. The code compares that output LED 0 to the minterm LED 1, and this ensures that our nice optimized expression matches the long expression from the truth table. Then we match LED 0 to LED 2 and this shows that our nice optimized expression from the maxterms to produce the POS, matches the long naive expression.



