# 2161. Partition Array According to Given Pivot

**Difficulty:** Medium  
**Topics:** Array, Two Pointers, Simulation  
**Companies:** Apple, Google, Amazon, Adobe  

---

## 📝 Problem Statement

You are given a **0-indexed** integer array `nums` and an integer `pivot`. Rearrange `nums` such that the following conditions are satisfied:

1. Every element **less than** `pivot` appears **before** every element **greater than** `pivot`.
2. Every element **equal to** `pivot` appears **between** the elements **less than** and **greater than** `pivot`.
3. The **relative order** of the elements **less than** `pivot` and the elements **greater than** `pivot` is **maintained**.

More formally, consider every `pi`, `pj` where `pi` is the new position of the `i`-th element and `pj` is the new position of the `j`-th element:
- If `i < j` and both elements are **smaller** (or **larger**) than `pivot`, then `pi < pj`.

Return `nums` after the rearrangement.

---

## 💡 Example 1

### **Input:**
```python
nums = [9,12,5,10,14,3,10]
pivot = 10

Output:

[9,5,3,10,10,12,14]

Explanation:
	•	Elements less than pivot: [9, 5, 3]
	•	Elements equal to pivot: [10, 10]
	•	Elements greater than pivot: [12, 14]
	•	The relative ordering is maintained.

💡 Example 2

Input:

nums = [-3,4,3,2]
pivot = 2

Output:

[-3,2,4,3]

Explanation:
	•	Elements less than pivot: [-3]
	•	Elements equal to pivot: [2]
	•	Elements greater than pivot: [4, 3]
	•	The relative ordering is maintained.

🔹 Constraints
	•	( 1 \leq nums.length \leq 10^5 )
	•	( -10^6 \leq nums[i] \leq 10^6 )
	•	pivot is guaranteed to be an element of nums.