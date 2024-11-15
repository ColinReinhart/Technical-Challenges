# 1574. Shortest Subarray to be Removed to Make Array Sorted

## Problem Description
Given an integer array `arr`, remove a subarray (can be empty) from `arr` such that the remaining elements in `arr` are non-decreasing.

Return the **length of the shortest subarray** to remove.

A subarray is a **contiguous subsequence** of the array.

---

## Examples

### Example 1:
**Input:**  
`arr = [1, 2, 3, 10, 4, 2, 3, 5]`  
**Output:**  
`3`  
**Explanation:**  
The shortest subarray to remove is `[10, 4, 2]`, resulting in `[1, 2, 3, 3, 5]`, which is sorted.  
Another valid solution is removing `[3, 10, 4]`.

---

### Example 2:
**Input:**  
`arr = [5, 4, 3, 2, 1]`  
**Output:**  
`4`  
**Explanation:**  
Since the array is strictly decreasing, we can only keep one element. The shortest subarray to remove is `[5, 4, 3, 2]` or `[4, 3, 2, 1]`.

---

### Example 3:
**Input:**  
`arr = [1, 2, 3]`  
**Output:**  
`0`  
**Explanation:**  
The array is already sorted, so no elements need to be removed.

---

## Constraints:
- \( 1 \leq \text{arr.length} \leq 10^5 \)
- \( 0 \leq \text{arr[i]} \leq 10^9 \)

---

## Notes:
- The subarray to remove can be empty if the array is already non-decreasing.
- The problem involves finding the shortest possible subarray to remove such that the remaining array becomes sorted.

---