# 2379. Minimum Recolors to Get K Consecutive Black Blocks

## **Difficulty:** Easy  
## **Topics:** String, Sliding Window  
## **Companies:** HP, Google, DailyHunt  

---

## **Problem Statement**
You are given a **0-indexed** string `blocks` of length `n`, where `blocks[i]` is either `'W'` or `'B'`, representing the color of the `i-th` block.  
- `'W'` denotes a **white block**.
- `'B'` denotes a **black block**.

You are also given an integer `k`, which represents the **desired number of consecutive black blocks**.

In **one operation**, you can **recolor** a white block (`'W'`) to become a black block (`'B'`).

Return the **minimum number of operations** needed to ensure that there is at least one **occurrence** of `k` consecutive black blocks.

---

## **Examples**

### **Example 1**
#### **Input:**
```ruby
blocks = "WBBWWBBWBW"
k = 7

Output:

3

Explanation:

One way to achieve 7 consecutive black blocks is to recolor the 0th, 3rd, and 4th blocks.
After these operations, blocks becomes "BBBBBBBWBW".
It can be shown that fewer than 3 operations cannot achieve 7 consecutive black blocks.
Thus, the minimum number of operations required is 3.

Example 2

Input:

blocks = "WBWBBBW"
k = 2

Output:

0

Explanation:

There is already an occurrence of 2 consecutive black blocks ("BB").
Thus, no changes are needed, and the output is 0.

Constraints
	•	n == blocks.length
	•	1 <= n <= 100
	•	blocks[i] is either 'W' or 'B'.
	•	1 <= k <= n

