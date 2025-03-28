# 🧮 2503. Maximum Number of Points From Grid Queries

**Difficulty:** Hard  
**Topics:** Matrix, BFS, Sorting, Heap  
**Companies:** _Not specified_

---

## 📝 Problem Description

You are given an `m x n` integer matrix `grid` and an array `queries` of size `k`.

Find an array `answer` of size `k` such that for each integer `queries[i]`, you start in the **top-left** cell of the matrix and repeat the following process:

- If `queries[i]` is **strictly greater** than the value of the current cell you are in:
  - You get **one point** if it's your **first time** visiting this cell.
  - You may move to any **adjacent cell** in all 4 directions: up, down, left, right.

- Otherwise:
  - You get **no points** and the process ends.

You may visit the same cell multiple times across queries.  
Return the resulting array `answer`.

---

## 🔍 Examples

### Example 1

**Input:**

```ruby
grid = [[1,2,3],[2,5,7],[3,5,1]]
queries = [5,6,2]
```

**Output:**

```ruby
[5,8,1]
```

**Explanation:**  
The diagrams show which cells we visit to get points for each query.

![example1][mnopfgq1]

---

### Example 2

**Input:**

```ruby
grid = [[5,2,1],[1,1,2]]
queries = [3]
```

**Output:**

```ruby
[0]
```

**Explanation:**  
We cannot get any points because the value of the top-left cell is already greater than or equal to `3`.

![example2][mnopfgq2]

---

## ✅ Constraints

- `m == grid.length`
- `n == grid[i].length`
- `2 <= m, n <= 1000`
- `4 <= m * n <= 10⁵`
- `k == queries.length`
- `1 <= k <= 10⁴`
- `1 <= grid[i][j], queries[i] <= 10⁶`

---

[mnopfgq1]: /ico/mnopfgq1.png  
[mnopfgq2]: /ico/mnopfgq2.png  
