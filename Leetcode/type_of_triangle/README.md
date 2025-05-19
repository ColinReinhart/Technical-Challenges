### 3024. Type of Triangle

**Difficulty:** Easy  
**Topics:** Array, Math, Sorting  
**Companies:** Google, Microsoft, IBM  

---

#### 🧠 Problem

You are given a 0-indexed integer array `nums` of size 3 which can form the sides of a triangle.

A triangle is classified as follows:

- **Equilateral**: All sides are equal.
- **Isosceles**: Exactly two sides are equal.
- **Scalene**: All sides are of different lengths.

Return a string representing the **type of triangle** that can be formed:

- `"equilateral"`  
- `"isosceles"`  
- `"scalene"`  

Return `"none"` if the sides **cannot** form a valid triangle.

A set of three numbers can form a triangle **only if the sum of any two sides is greater than the third side**.

---

#### 🧪 Examples

**Example 1:**

Input: nums = [3, 3, 3]
Output: “equilateral”

**Explanation:**  
All sides are equal, so it forms an **equilateral** triangle.

---

**Example 2:**

Input: nums = [3, 4, 5]
Output: “scalene”

**Explanation:**  
- 3 + 4 = 7 > 5  
- 3 + 5 = 8 > 4  
- 4 + 5 = 9 > 3  

All three triangle inequalities are satisfied. Since all sides are different, it forms a **scalene** triangle.

---

#### 🔒 Constraints

- `nums.length == 3`  
- `1 <= nums[i] <= 100`
