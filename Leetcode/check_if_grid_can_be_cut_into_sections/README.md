# 3394. Check if Grid can be Cut into Sections

**Difficulty:** Medium  
**Topics:** Array, Geometry  
**Companies:** (not listed)

---

## 📘 Problem Description

You are given an integer `n` representing the dimensions of an `n x n` grid, with the origin at the **bottom-left** corner of the grid. You are also given a 2D array of coordinates `rectangles`, where `rectangles[i]` is in the form `[startx, starty, endx, endy]`, representing a rectangle on the grid. Each rectangle is defined as follows:

- `(startx, starty)`: The bottom-left corner of the rectangle.  
- `(endx, endy)`: The top-right corner of the rectangle.

> **Note:** The rectangles do **not** overlap.

---

## ✅ Your Task

Determine if it is possible to make **either two horizontal cuts** or **two vertical cuts** on the grid such that:

1. Each of the **three resulting sections** formed by the cuts contains **at least one rectangle**.
2. Every rectangle belongs to **exactly one** of the three sections.

Return `true` if such cuts can be made, otherwise return `false`.

---

## 🧪 Examples

### Example 1

![cigcbcis1]

**Input:**

```ruby
n = 5
rectangles = [[1,0,5,2],[0,2,2,4],[3,2,5,3],[0,4,4,5]]

Output:

true

Explanation:

We can make horizontal cuts at y = 2 and y = 4. Each resulting section contains at least one rectangle.

```

Example 2

![cigcbcis2]

```ruby
Input:

n = 4
rectangles = [[0,0,1,1],[2,0,3,4],[0,2,2,3],[3,0,4,3]]

Output:

true

Explanation:

We can make vertical cuts at x = 2 and x = 3.

```

Example 3

```ruby
Input:

n = 4
rectangles = [[0,2,2,4],[1,0,3,2],[2,2,3,4],[3,0,4,2],[3,2,4,4]]

Output:

false

Explanation:

There is no valid combination of two horizontal or two vertical cuts that would result in three non-overlapping sections where each contains at least one rectangle.

```

🔒 Constraints
	•	3 <= n <= 10^9
	•	3 <= rectangles.length <= 10^5
	•	0 <= rectangles[i][0] < rectangles[i][2] <= n
	•	0 <= rectangles[i][1] < rectangles[i][3] <= n
	•	No two rectangles overlap


[cigcbcis1]:/ico/cigcbcis1.png
[cigcbcis2]:/ico/cigcbcis2.png