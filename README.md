

# CSO Lab Exam Solutions in Assembly 🖥️💻

This repository contains solutions to the CSO Lab Exam questions implemented in Assembly language. The solutions are intended to showcase the use of Assembly for solving problems in Computer Systems Organization (CSO). Each question is solved with a focus on understanding low-level programming and the interaction between C and Assembly, where C functions are declared in the C files but defined in the corresponding Assembly files.

## Author 🧑‍💻
- **Shreyas Mehta**

## Table of Contents 📑
- [Introduction](#introduction)
- [Problem Statements](#problem-statements)
- [Directory Structure](#directory-structure)
- [Submission Instructions](#submission-instructions)
- [Usage](#usage)
- [License](#license)

## Introduction 📝
This project contains my solutions to the CSO Lab Exam questions for the Spring 2024 semester at the International Institute of Information Technology, Hyderabad. All solutions are implemented using a combination of C and Assembly language, highlighting my ability to work with both languages. The C code contains function declarations that are defined in the corresponding Assembly files. The solutions cover a variety of topics, including basic arithmetic operations, bit manipulation, array processing, and more, all done with assembly-level implementations.

## Problem Statements 💡
The following problems are solved in this repository:

1. **Basic Arithmetic Operations** using switch-case.
2. **Odd number of 1s in 64-bit number** (bitwise operations).
3. **FizzBuzz-like transformation** based on divisibility.
4. **Palindrome check for numbers**.
5. **Rearranging an array of binary digits**.
6. **Finding GCD of two numbers** using Euclid's algorithm.
7. **Maximum sum from left and right subarrays**.
8. **Wave-sort an array**.
9. **First missing positive integer in an array**.
10. **Lexicographically smallest array by swapping odd sums**.
11. **Maximum line value based on direction change**.
12. **Checking if a number is special (sum of factorial of digits)**.

All solutions have been implemented and submitted. ✅

## Directory Structure 📁
The directory structure is organized as follows:

```
<roll_number>
│
├── q1
│   ├── q1.s    (Assembly code with function definitions for problem 1)
│   ├── q1.c    (C code declaring the functions for problem 1)
│
├── q2
│   ├── q2.s    (Assembly code with function definitions for problem 2)
│   ├── q2.c    (C code declaring the functions for problem 2)
│
...
```

## Submission Instructions 📨
Please follow the exact directory structure when submitting. Failure to adhere to these instructions may result in a penalty and potential non-evaluation of your submission. Ensure that each question has both C and Assembly files as required.

## Usage ⚙️
To compile and run the solutions:

1. **Assembly compilation**:
   ```bash
   as <filename>.s -o <filename>.o
   ld <filename>.o -o <filename>
   ```

2. **Running the solution**:
   ```bash
   ./<filename>
   ```

Ensure that the input is provided as per the format mentioned in each problem's description.

