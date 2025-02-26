# 796. Rotate String

**Difficulty**: Easy  
**Topics**: String, String Matching  
**Companies**: Google, Amazon, Meta, Bloomberg, Wells Fargo, Microsoft, Apple, Adobe, TCS, Visa, SAP  

## Problem Description

Given two strings `s` and `goal`, return `true` if and only if `s` can become `goal` after some number of shifts on `s`.

A **shift** on `s` consists of moving the leftmost character of `s` to the rightmost position.

For example, if `s = "abcde"`, then after one shift it will become `"bcdea"`.

## Examples

### Example 1

**Input**: 
```plaintext
s = "abcde", goal = "cdeab"

Output:

true

Example 2

Input:

s = "abcde", goal = "abced"

Output:

false

Constraints

	•	1 <= s.length, goal.length <= 100
	•	s and goal consist of lowercase English letters.

