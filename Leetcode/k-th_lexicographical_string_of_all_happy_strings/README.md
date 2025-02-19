# 1415. The k-th Lexicographical String of All Happy Strings of Length n

**Difficulty:** Medium  
**Topics:** String, Backtracking  
**Companies:** Google, Microsoft  

---

## 📜 Problem Statement

A **happy string** is a string that:
- Consists only of the **letters** `['a', 'b', 'c']`.
- Does **not contain consecutive** identical letters (i.e., `s[i] != s[i+1]` for all `i`).

For example:
✅ `"abc"`, `"ac"`, `"b"`, and `"abcbabcbcb"` are **happy strings**.  
❌ `"aa"`, `"baa"`, and `"ababbc"` are **not happy strings**.

Given two integers `n` and `k`, consider a **sorted list** of all happy strings of length `n` (in lexicographical order).

Return the **k-th happy string** in this list **or** return `""` if there are **fewer than k happy strings**.

---

## 🔍 Examples

### **Example 1**
#### **Input:**
```ruby
n = 1, k = 3

Output:

"c"

Explanation:

The sorted list of happy strings of length 1 is ["a", "b", "c"].
The 3rd string is "c".

Example 2

Input:

n = 1, k = 4

Output:

""

Explanation:

There are only 3 happy strings of length 1, so k = 4 is out of range.

Example 3

Input:

n = 3, k = 9

Output:

"cab"

Explanation:

The sorted list of happy strings of length 3:

["aba", "abc", "aca", "acb", "bab", "bac", "bca", "bcb", "cab", "cac", "cba", "cbc"]

The 9th string is "cab".

🔹 Constraints
	•	( 1 \leq n \leq 10 )
	•	( 1 \leq k \leq 100 )