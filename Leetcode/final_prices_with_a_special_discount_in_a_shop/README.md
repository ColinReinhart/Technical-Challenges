# 1475. Final Prices With a Special Discount in a Shop

**Difficulty:** Easy  
**Topics:** Array  

---

## Problem Description

You are given an integer array `prices` where `prices[i]` is the price of the `i-th` item in a shop.

There is a special discount for items in the shop. If you buy the `i-th` item, then you will receive a discount equivalent to `prices[j]`, where `j` is the minimum index such that `j > i` and `prices[j] <= prices[i]`. Otherwise, you will not receive any discount at all.

Return an integer array `answer` where `answer[i]` is the final price you will pay for the `i-th` item of the shop, considering the special discount.

---

## Examples

### Example 1:
**Input:**  
`prices = [8, 4, 6, 2, 3]`  

**Output:**  
`[4, 2, 4, 2, 3]`  

**Explanation:**  
- For item 0 with `prices[0] = 8`, you will receive a discount of `prices[1] = 4`. Final price = `8 - 4 = 4`.  
- For item 1 with `prices[1] = 4`, you will receive a discount of `prices[3] = 2`. Final price = `4 - 2 = 2`.  
- For item 2 with `prices[2] = 6`, you will receive a discount of `prices[3] = 2`. Final price = `6 - 2 = 4`.  
- For items 3 and 4, no discounts are available.  

---

### Example 2:
**Input:**  
`prices = [1, 2, 3, 4, 5]`  

**Output:**  
`[1, 2, 3, 4, 5]`  

**Explanation:**  
In this case, for all items, no discounts are available.

---

### Example 3:
**Input:**  
`prices = [10, 1, 1, 6]`  

**Output:**  
`[9, 0, 1, 6]`  

---

## Constraints:
- `1 <= prices.length <= 500`
- `1 <= prices[i] <= 1000`