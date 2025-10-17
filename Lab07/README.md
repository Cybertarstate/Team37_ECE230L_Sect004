# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions
Summary:
In this lab we focused on bitwise subtraction rather than addition from our previous labs. We implemented a half subtractor, one\`s compliment and two\`s compliment. In order to perform subtraction we must invert bits in one`s complement, and potentially we need to carry around a bit. We run into looping issues if we attempt to do it in a naive manner. So we needed to build a special circuit with an interim stage of addition inorder to avoid the looping condition. Then in two's complement we must invert the bits & add an additional bit. FInal carry gets discarded. In twos compliment we are just doing the conversion for this lab, not actually including the addition operation with the conversion. We learned we can use "genvar i" and a for loop sequence to loop through multiple instantiations of our adders. Instantiating registers is a big piece of the lab we were missing, declaring an 8 bit register was a necessary step in connecting the underlying code to the top level module. Reading the Lab documentation in its entirety would signal our prudence and due diligance. All the inputs and outputs need to happen in the top level module, which logically makes sense, but there needs to be a part in the middle that tells you the inputs within the lower level modules need to be assigned to bits in a register, and then later on in the top file those bits can be assigned to input switches.

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
Half Adder and Half Subtractor both have sums = to A^B. They both cannot handle a carry in. The differences are that a half adder has a carry, while a half subtractor has a borrow. The borrow behaves very similarly compared to the carry, but kind of in an opposite manner. The borrow differs though because when we have a 0 and a 1 we have to “borrow” to the next bit until we find a 1 to subtract it from. The truth table looks different for the borrow too. Borrow only depends on an XOR type setup but only when the value being subtracted from is 0, and the value being subtracted is 1 then you get a sum of 1, and a borrow of 1.


### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
In our adder circuits the MSB cannot be stable and know its output until LSB is stable and knows its output. The Y output of the MSB depends on the carry from the LSB. Then when we try to do an end around carry the LSB needs the MSB to be stable and know its output before it can do so for its own value. We are potentially creating the conditions for a never ending loop. We create a circuit so this is never possible, but the circuit we are making still makes the process slower than it needs to be.

### 3 - What is the edge case and problem with Two’s Complement number representation?
The problem with Two’s Complement number representation is that we can not represent the same number of positive and negative values. Due to the bit places available since we have an additional bit for signed integers, our edge case is that our max positive value has to be one less than the negative range max value.
