# 18. 4Sum

**Difficulty:** Medium  
**Topics:** Array, Two Pointers, Sorting  
**Companies:** Google, Microsoft, Amazon, Cloudflare, Nvidia, Meta, Bloomberg, Yandex, Rubrik, Apple, Adobe, Yahoo, Uber, TikTok, Oyo, TCS, Oracle  

---

## 📜 Problem Statement

Given an array `nums` of `n` integers, return an array of **all unique quadruplets** `[nums[a], nums[b], nums[c], nums[d]]` such that:

- \( 0 \leq a, b, c, d < n \)
- \( a, b, c, \) and \( d \) are **distinct**.
- \( nums[a] + nums[b] + nums[c] + nums[d] = target \)

You may return the answer in **any order**.

---

## 🔍 Examples

### **Example 1**
#### **Input:**
```ruby
nums = [1,0,-1,0,-2,2]
target = 0

Output:

[[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]

Example 2

Input:

nums = [2,2,2,2,2]
target = 8

Output:

[[2,2,2,2]]

🔹 Constraints
	•	( 1 \leq nums.length \leq 200 )
	•	( -10^9 \leq nums[i] \leq 10^9 )
	•	( -10^9 \leq target \leq 10^9 )