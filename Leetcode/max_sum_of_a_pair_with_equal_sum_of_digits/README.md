# 2342. Max Sum of a Pair With Equal Sum of Digits

**Difficulty:** Medium  
**Topics:** Array, Hash Table, Sorting, Heap (Priority Queue)  
**Companies:** Bloomberg, Microsoft, Amazon  

---

## 📜 Problem Statement
You are given a **0-indexed array** `nums` consisting of **positive integers**.  

You can choose **two indices** `i` and `j` such that **i ≠ j**, and the **sum of digits** of `nums[i]` is **equal** to that of `nums[j]`.

Return the **maximum value** of `nums[i] + nums[j]` over all possible pairs `(i, j)` that satisfy the conditions.

If no such pairs exist, return `-1`.

---

## 🔍 Examples

### **Example 1**
#### **Input:**
```ruby
nums = [18, 43, 36, 13, 7]

Output:

54

Explanation:

The valid pairs (i, j) where the sum of digits is the same:
	•	(0, 2): Both 18 and 36 have a digit sum of 9, and their sum is 18 + 36 = 54.
	•	(1, 4): Both 43 and 7 have a digit sum of 7, and their sum is 43 + 7 = 50.

The maximum sum that can be obtained is 54.

Example 2

Input:

nums = [10, 12, 19, 14]

Output:

-1

Explanation:

There are no two numbers with the same digit sum, so the result is -1.

🔹 Constraints
	•	(1 \leq nums.length \leq 10^5)
	•	(1 \leq nums[i] \leq 10^9)
