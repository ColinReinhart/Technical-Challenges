# 20. Valid Parentheses

**Difficulty:** Easy  
**Topics:** Stack, String  

## Problem Description

Given a string `s` containing just the characters `'('`, `')'`, `'{'`, `'}'`, `'['`, and `']'`, determine if the input string is **valid**.  

An input string is valid if:  
1. Open brackets must be closed by the same type of brackets.  
2. Open brackets must be closed in the correct order.  
3. Every close bracket has a corresponding open bracket of the same type.  

---

## Examples

### Example 1:
**Input:**  
`s = "()"`  
**Output:**  
`true`  

### Example 2:
**Input:**  
`s = "()[]{}"`  
**Output:**  
`true`  

### Example 3:
**Input:**  
`s = "(]"`  
**Output:**  
`false`  

### Example 4:
**Input:**  
`s = "([])"`  
**Output:**  
`true`  

---

## Constraints

- `1 <= s.length <= 10^4`  
- `s` consists of parentheses only `'()[]{}'`.  

---

## Approach

A **stack** is the ideal data structure for this problem because it follows the **Last In, First Out (LIFO)** principle, which helps check the nesting and order of the brackets.

### Algorithm:
1. Use a stack to keep track of open brackets.
2. For each character in the string:
   - If it is an open bracket (`'('`, `'{'`, `'['`), push it onto the stack.
   - If it is a close bracket (`')'`, `'}'`, `']'`), check:
     - If the stack is empty, return `false` (unmatched closing bracket).
     - Otherwise, pop the stack and verify it matches the current closing bracket.
3. After processing all characters, ensure the stack is empty (unmatched open brackets mean invalid input).

---
