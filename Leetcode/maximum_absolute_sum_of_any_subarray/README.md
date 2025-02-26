# 1749. Maximum Absolute Sum of Any Subarray

**Difficulty:** Medium  
**Topics:** Array, Dynamic Programming  
**Companies:** Amazon  

---

## **📝 Problem Statement**

You are given an integer array `nums`. The **absolute sum** of a subarray `[nums[l], nums[l+1], ..., nums[r-1], nums[r]]` is defined as:

\[
\text{abs}(nums[l] + nums[l+1] + ... + nums[r-1] + nums[r])
\]

Return the **maximum absolute sum** of any (possibly empty) subarray of `nums`.

### **🔹 Definition of Absolute Value (`abs(x)`)**
- If `x` is **negative**, then `abs(x) = -x`
- If `x` is **non-negative**, then `abs(x) = x`

---

## **🔹 Example 1**
### **Input:**
```ruby
nums = [1,-3,2,3,-4]

Output:

5

Explanation:

The subarray [2,3] has absolute sum:
[
\text{abs}(2+3) = \text{abs}(5) = 5
]
So the answer is 5.

🔹 Example 2

Input:

nums = [2,-5,1,-4,3,-2]

Output:

8

Explanation:

The subarray [-5,1,-4] has absolute sum:
[
\text{abs}(-5+1-4) = \text{abs}(-8) = 8
]
So the answer is 8.

🔹 Constraints
	•	( 1 \leq nums.length \leq 10^5 )
	•	( -10^4 \leq nums[i] \leq 10^4 )