# 🧮 2551. Put Marbles in Bags

**Difficulty:** Hard  
**Topics:** Array, Greedy, Sorting, Heap (Priority Queue)  
**Companies:** Amazon, TikTok, Apple, Flipkart, DE Shaw, Uber

---

## 🧠 Problem Hint

You have `k` bags. You are given a 0-indexed integer array `weights` where `weights[i]` is the weight of the `i`th marble, and an integer `k`.

Your goal is to **divide the marbles into `k` bags** according to the following rules:

- No bag is empty.
- If the `i`th marble and `j`th marble are in a bag, then **all marbles between index `i` and `j`** must also be in that bag (i.e., each bag contains **contiguous elements**).
- The **cost of a bag** that holds marbles from index `i` to `j` is:  
  `weights[i] + weights[j]`.
- The **score** after distributing the marbles is the **sum of the costs** of all `k` bags.

📌 **Return the difference between the maximum and minimum scores** possible across all valid marble distributions.

---

## 🔍 Examples

### Example 1

**Input:**

```ruby
weights = [1, 3, 5, 1]
k = 2

Output:

4

Explanation:
	•	Minimum score: [1], [3, 5, 1] → (1 + 1) + (3 + 1) = 6
	•	Maximum score: [1, 3], [5, 1] → (1 + 3) + (5 + 1) = 10
	•	Difference: 10 - 6 = 4

⸻

Example 2

Input:

weights = [1, 3]
k = 2

Output:

0

Explanation:
	•	Only possible distribution: [1], [3]
	•	Both min and max score are the same → difference is 0

⸻

✅ Constraints
	•	1 <= k <= weights.length <= 10⁵
	•	1 <= weights[i] <= 10⁹
