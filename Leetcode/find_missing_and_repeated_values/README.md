# 2965. Find Missing and Repeated Values

**Difficulty:** Easy  
**Topics:** Array, Hash Table, Math, Matrix  
**Companies:** Google, Amazon, Bloomberg, Microsoft  

## Problem Statement

You are given a **0-indexed 2D integer matrix** `grid` of size `n * n` with values in the range `[1, n²]`. Each integer appears **exactly once** except:
- A number **`a`** appears **twice**.
- A number **`b`** is **missing**.

Your task is to **find the repeating and missing numbers `a` and `b`**.

Return a **0-indexed integer array** `ans` of size `2`, where:
- `ans[0]` is the **repeated number (`a`)**.
- `ans[1]` is the **missing number (`b`)**.

---

## Example 1

**Input:**  
```plaintext
grid = [[1,3],
        [2,2]]

Output:

[2,4]

Explanation:
	•	Number 2 is repeated.
	•	Number 4 is missing.
Thus, the answer is [2,4].

Example 2

Input:

grid = [[9,1,7],
        [8,9,2],
        [3,4,6]]

Output:

[9,5]

Explanation:
	•	Number 9 is repeated.
	•	Number 5 is missing.
Thus, the answer is [9,5].

Constraints
	•	2 <= n == grid.length == grid[i].length <= 50
	•	1 <= grid[i][j] <= n²
	•	For all x where 1 <= x <= n²:
	•	Exactly one number is missing in grid.
	•	Exactly one number appears twice in grid.
	•	All other numbers appear exactly once in grid.
