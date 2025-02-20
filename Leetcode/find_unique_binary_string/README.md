# 1980. Find Unique Binary String

**Difficulty:** Medium  
**Topics:** Array, Hash Table, String, Backtracking  
**Companies:** Meta, Google, Amazon  

---

## 📝 Problem Statement

Given an array of strings `nums` containing `n` **unique binary strings**, each of length `n`, return a **binary string of length `n`** that **does not appear in `nums`**. If multiple answers exist, return any valid one.

---

## 🔍 Examples

### Example 1

**Input:**
```ruby
nums = ["01","10"]

Output:

"11"

Explanation:
The binary string "11" does not appear in nums.
Another correct answer would be "00".

Example 2

Input:

nums = ["00","01"]

Output:

"11"

Explanation:
The binary string "11" does not appear in nums.
Another valid answer would be "10".

Example 3

Input:

nums = ["111","011","001"]

Output:

"101"

Explanation:
The binary string "101" does not appear in nums.
Other valid answers include "000", "010", "100", and "110".

🔹 Constraints
	•	n == nums.length
	•	1 ≤ n ≤ 16
	•	nums[i].length == n
	•	nums[i] consists of only '0' or '1'.
	•	All strings in nums are unique.