# 2579. Count Total Number of Colored Cells

**Difficulty:** Medium  
**Topics:** Math  

---

## 📝 Problem Statement

There exists an **infinitely large** two-dimensional grid of **uncolored** unit cells. You are given a **positive integer `n`**, indicating that you must follow this routine for `n` minutes:

1. **Minute 1**: Color **any** arbitrary unit cell **blue**.
2. **Every minute after**: Color **every uncolored cell** that **touches a blue cell**.

Below is a pictorial representation of the state of the grid after **1, 2, and 3 minutes**.

Return the **total number of colored cells** at the end of `n` minutes.

---

## 💡 Examples

### **Example 1**
#### **Input:**
```python
n = 1

Output:

1

Explanation:

After 1 minute, there is only 1 blue cell, so we return 1.

Example 2

Input:

n = 2

Output:

5

Explanation:

After 2 minutes, there are 4 colored cells on the boundary and 1 in the center, so we return 5.

🔹 Constraints
	•	( 1 \leq n \leq 10^5 )