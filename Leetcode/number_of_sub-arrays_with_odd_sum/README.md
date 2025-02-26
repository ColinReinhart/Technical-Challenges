# 1524. Number of Sub-arrays With Odd Sum

**Difficulty:** Medium  
**Topics:** Array, Math, Dynamic Programming, Prefix Sum  
**Companies:** Google, Directi  

---

## 📝 Problem Statement

Given an array of integers `arr`, return the number of subarrays with an **odd sum**.

Since the answer can be very large, return it **modulo** \( 10^9 + 7 \).

---

## 🔹 Example 1

### **Input:**
```ruby
arr = [1,3,5]

Output:

4

Explanation:

All possible subarrays:

[[1], [1,3], [1,3,5], [3], [3,5], [5]]

Corresponding sums:

[1, 4, 9, 3, 8, 5]

Odd sums: [1, 9, 3, 5]
Total count of odd sum subarrays = 4.

🔹 Example 2

Input:

arr = [2,4,6]

Output:

0

Explanation:

All possible subarrays:

[[2], [2,4], [2,4,6], [4], [4,6], [6]]

Corresponding sums:

[2, 6, 12, 4, 10, 6]

All subarrays have even sums.
Thus, the answer is 0.

🔹 Example 3

Input:

arr = [1,2,3,4,5,6,7]

Output:

16

🔹 Constraints
	•	( 1 \leq arr[i] \leq 100 )
	•	( 1 \leq arr.length \leq 10^5 )

