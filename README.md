# Sequential Circuits: Latches

In this lab, you’ve learned about edge sensitive circuits and explored some of the power therein.

## Rubric

|Item|Description|Value|
|-|-|-|
|Summary Answers|Your writings about what you learned in this lab.|25%|
|Question 1|Your answers to the question|25%|
|Question 2|Your answers to the question|25%|
|Question 3|Your answers to the question|25%|

## Names
Matt DeRoos
Michelle Joo

## Summary
In this lab, we learned the difference between level sensitive and edge sensitive circuits and why edge triggered circuits are more useful in real systems. We implemented D, JK, and T flip-flops in Verilog and used a clock signal to control when the output updates. This helped us understand how circuits store values over time and how timing plays a big role in keeping everything consistent and stable. It also showed how small changes in design like using posedge can completely change how a circuit behaves.
## Lab Questions

### What is difference between edge and level sensitive circuits?
Level sensitive circuits update their output the entire time the enable signal is high, meaning the output keeps following the input as long as it is enabled. This can cause issues because the output can keep changing unexpectedly. Edge sensitive circuits, however, only update at the exact moment the signal changes like the rising edge of a clock. Ater that moment. the output stays the same even if the input changes. So overall, level sensitive circuits continuously respond, while edge sensitive circuits respond only once per signal change. 

### Why is it important to declare initial state?
Declaring an initial state is important because when the circuit first starts up, it doesn't automatically know what the stored values should be. Without an initial value, the outputs can be random or undefined, which can lead to incorrect behavior. By setting an initial state like Q = 0, we make sure the circuit starts in a known and controlled condition. This is especially important for sequential circuits since their behavior depends on previous values.

### What do edge sensitive circuits let us build?
Edge sensitive circuits allow us to build more controlled and reliable systems like counters, registers, and memory units. Since they only update on a clock edgem they prevent continuous changes and feedback loops that can happen in level sensitive circuits. This make it possible to design systems that update step-by-step in sync with a clock signal. Because of this, edge sensitive circuits are used in almost all modern digital systems, including processors and other complex hardware. 
