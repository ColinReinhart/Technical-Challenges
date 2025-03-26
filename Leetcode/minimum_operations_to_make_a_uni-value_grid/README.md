## 🧮 2033. Minimum Operations to Make a Uni-Value Grid

**Difficulty:** Medium  
**Topics:** Array, Math, Sorting, Matrix  
**Companies:** EPAM Systems

---

### 📝 Problem Statement

You are given a 2D integer `grid` of size `m x n` and an integer `x`.  
In **one operation**, you can add or subtract `x` from **any** element in the grid.

A **uni-value grid** is a grid where **all elements are equal**.

Return the **minimum number of operations** to make the grid uni-value.  
If it is **not possible**, return `-1`.

---

### 🔍 Examples

#### Example 1:
**Input:**
```ruby
grid = [[2,4],[6,8]]
x = 2
```

**Output:**
```
4
```

**Explanation:**
We can make every element equal to `4`:
- Add `x` to `2` once.
- Subtract `x` from `6` once.
- Subtract `x` from `8` twice.  
Total operations = **4**.

---

#### Example 2:
**Input:**
```ruby
grid = [[1,5],[2,3]]
x = 1
```

**Output:**
```
5
```

**Explanation:**  
We can make all elements equal to `3`.

---

#### Example 3:
**Input:**
```ruby
grid = [[1,2],[3,4]]
x = 2
```

**Output:**
```
-1
```

**Explanation:**  
It's impossible to make every element equal.

---

### ✅ Constraints
- `m == grid.length`
- `n == grid[i].length`
- `1 <= m, n <= 10⁵`
- `1 <= m * n <= 10⁵`
- `1 <= x, grid[i][j] <= 10⁴`
