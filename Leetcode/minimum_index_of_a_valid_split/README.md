# 2780. Minimum Index of a Valid Split

**Difficulty:** Medium  
**Tags:** Array, Hash Table, Sorting

---

## 🧠 Description

An element `x` of an integer array `arr` of length `m` is **dominant** if **more than half** the elements of `arr` have a value of `x`.

You are given a **0-indexed** integer array `nums` of length `n` which has **exactly one dominant element**.

You can split `nums` at an index `i` into two arrays:  

- `nums[0..i]` and  
- `nums[i+1..n-1]`

A **split is only valid** if:

- `0 <= i < n - 1`, and  
- Both subarrays have the **same dominant element**.

Return the **minimum index** `i` for which such a **valid split** exists.  
If no valid split exists, return `-1`.

---

## 💡 Hint

> An element is dominant in a subarray if it appears **more than half** the length of that subarray.

---

## 📘 Examples

### Example 1

```ruby
Input: nums = [1,2,2,2]
Output: 2
```

**Explanation:**  
Split at index `2`:  
- Left: `[1,2,2]` → dominant element is `2` (2 out of 3)  
- Right: `[2]` → dominant element is `2` (1 out of 1)  
✅ Both sides have the same dominant element → valid split.

---

### Example 2

```ruby
Input: nums = [2,1,3,1,1,1,7,1,2,1]
Output: 4
```

**Explanation:**  
Split at index `4`:  
- Left: `[2,1,3,1,1]` → dominant element is `1` (3 out of 5)  
- Right: `[1,7,1,2,1]` → dominant element is `1` (3 out of 5)  
✅ Valid split.

---

### Example 3

```ruby
Input: nums = [3,3,3,3,7,2,2]
Output: -1
```

**Explanation:**  
No split exists where both sides have the same dominant element.  
❌ No valid split.

---

## 🔒 Constraints

- `1 <= nums.length <= 10⁵`
- `1 <= nums[i] <= 10⁹`
- The array `nums` has **exactly one dominant element**