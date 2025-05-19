### 3337. Total Characters in String After Transformations II

**Difficulty:** Hard  
**Topics:** Hash Table, Math, String, Dynamic Programming, Counting  
**Companies:** Google  

---

#### 🧠 Problem

You are given a string `s` consisting of lowercase English letters, an integer `t` representing the number of transformations to perform, and an array `nums` of size 26.

In one transformation, every character in `s` is replaced according to the following rules:

- Replace `s[i]` with the next `nums[s[i] - 'a']` consecutive characters in the alphabet.
- The transformation wraps around the alphabet if it exceeds `'z'`.

For example:  
- If `s[i] = 'a'` and `nums[0] = 3`, `'a'` becomes `"bcd"`.  
- If `s[i] = 'y'` and `nums[24] = 3`, `'y'` becomes `"zab"`.

Return the **length** of the resulting string after exactly `t` transformations.

Since the answer may be very large, return it **modulo 10⁹ + 7**.

---

#### 🧪 Examples

**Example 1:**

Input:
s = “abcyy”,
t = 2,
nums = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2]

Output:
7

**Explanation:**

- First Transformation (t = 1):  
  `'a' → 'b'`, `'b' → 'c'`, `'c' → 'd'`, `'y' → 'z'`, `'y' → 'z'`  
  Resulting string: `"bcdzz"`

- Second Transformation (t = 2):  
  `'b' → 'c'`, `'c' → 'd'`, `'d' → 'e'`, `'z' → 'ab'`, `'z' → 'ab'`  
  Resulting string: `"cdeabab"`

- Final Length: **7**

---

**Example 2:**

Input:
s = “azbk”,
t = 1,
nums = [2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2]

Output:
8

**Explanation:**

- `'a' → 'bc'`, `'z' → 'ab'`, `'b' → 'cd'`, `'k' → 'lm'`  
  Resulting string: `"bcabcdlm"`

- Final Length: **8**

---

#### 🔒 Constraints

- `1 <= s.length <= 10⁵`
- `s` consists only of lowercase English letters
- `1 <= t <= 10⁹`
- `nums.length == 26`
- `1 <= nums[i] <= 25`
