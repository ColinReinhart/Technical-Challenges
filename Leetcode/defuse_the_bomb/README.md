# 1652. Defuse the Bomb

## Difficulty
Easy

## Topics
- Array
- Sliding Window

## Problem Description
You have a bomb to defuse, and your time is running out! Your informer will provide you with a **circular array** `code` of length `n` and a key `k`.

To decrypt the code, you must replace every number. All the numbers are replaced **simultaneously**.

- If \( k > 0 \), replace the \( i \)-th number with the **sum of the next \( k \)** numbers.
- If \( k < 0 \), replace the \( i \)-th number with the **sum of the previous \( |k| \)** numbers.
- If \( k == 0 \), replace the \( i \)-th number with `0`.

Since `code` is circular:
- The next element of `code[n-1]` is `code[0]`.
- The previous element of `code[0]` is `code[n-1]`.

### Task
Given the circular array `code` and an integer `k`, return the **decrypted code** to defuse the bomb!

---

## Examples

### Example 1
**Input:**  
`code = [5, 7, 1, 4]`, `k = 3`  
**Output:**  
`[12, 10, 16, 13]`  

**Explanation:**  
Each number is replaced by the sum of the next 3 numbers:  
- The decrypted code is `[7+1+4, 1+4+5, 4+5+7, 5+7+1]`.  
- Notice that the numbers wrap around.

---

### Example 2
**Input:**  
`code = [1, 2, 3, 4]`, `k = 0`  
**Output:**  
`[0, 0, 0, 0]`  

**Explanation:**  
When `k` is zero, all numbers are replaced by `0`.

---

### Example 3
**Input:**  
`code = [2, 4, 9, 3]`, `k = -2`  
**Output:**  
`[12, 5, 6, 13]`  

**Explanation:**  
The decrypted code is `[3+9, 2+3, 4+2, 9+4]`.  
- Notice that the numbers wrap around.  
- When `k` is negative, the sum is taken from the previous numbers.

---

## Constraints
- \( n == \text{code.length} \)
- \( 1 \leq n \leq 100 \)
- \( 1 \leq \text{code[i]} \leq 100 \)
- \( -(n - 1) \leq k \leq n - 1 \)