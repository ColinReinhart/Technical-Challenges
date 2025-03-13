# 3356. Zero Array Transformation II

## **Difficulty:** Medium  
## **Topics:** Array, Binary Search, Prefix Sum  
## **Companies:** Google  

---

## **Problem Statement**

You are given an integer array `nums` of length `n` and a 2D array `queries` where `queries[i] = [li, ri, vali]`.

Each `queries[i]` represents the following action on `nums`:

- Decrement the value at each index in the range `[li, ri]` in `nums` by **at most** `vali`.
- The amount by which each value is decremented can be chosen independently for each index.

A **Zero Array** is an array with **all its elements equal to 0**.

Return the **minimum possible non-negative value of `k`**, such that after processing the **first `k` queries** in sequence, `nums` becomes a Zero Array.  
If **no such `k` exists**, return **`-1`**.

---

## **Examples**

### **Example 1**

**Input:**
```ruby
nums = [2,0,2]
queries = [[0,2,1],[0,2,1],[1,1,3]]

Output:

2

Explanation:
	•	Query 0: Decrement values at indices [0, 1, 2] by [1, 0, 1] respectively.
Array becomes [1, 0, 1].
	•	Query 1: Decrement values at indices [0, 1, 2] by [1, 0, 1] respectively.
Array becomes [0, 0, 0], which is a Zero Array.

Therefore, the minimum value of k is 2.

Example 2

Input:

nums = [4,3,2,1]
queries = [[1,3,2],[0,2,1]]

Output:

-1

Explanation:
	•	Query 0: Decrement values at indices [1, 2, 3] by [2, 2, 1] respectively.
Array becomes [4, 1, 0, 0].
	•	Query 1: Decrement values at indices [0, 1, 2] by [1, 1, 0] respectively.
Array becomes [3, 0, 0, 0], which is not a Zero Array.

Hence, it is impossible to achieve a Zero Array.

Example 3

Input:

nums = [0]
queries = [[0,0,1]]

Output:

0

Explanation:
	•	The array is already a Zero Array, so the result is 0.

Example 4

Input:

nums = [10]
queries = [[0,0,5],[0,0,3],[0,0,2],[0,0,1]]

Output:

3

Explanation:
	•	Query 0: Decrement by 5 → [5]
	•	Query 1: Decrement by 3 → [2]
	•	Query 2: Decrement by 2 → [0] (Zero Array achieved)

Thus, the minimum k is 3.

Constraints
	•	1 <= nums.length <= 10^5
	•	0 <= nums[i] <= 5 * 10^5
	•	1 <= queries.length <= 10^5
	•	queries[i].length == 3
	•	0 <= li <= ri < nums.length
	•	1 <= vali <= 5

