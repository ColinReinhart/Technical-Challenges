# 1910. Remove All Occurrences of a Substring

**Difficulty:** Medium  
**Topics:** String, Stack, Simulation  
**Companies:** IBM, Google, Microsoft, Amazon, Bloomberg, Adobe, Zoho, Twitter, Yandex  

---

## 📜 Problem Statement
Given two strings `s` and `part`, perform the following operation on `s` **until all occurrences** of the substring `part` are removed:

1. **Find the leftmost occurrence** of the substring `part` in `s`.
2. **Remove it** from `s`.
3. Repeat the process until `s` no longer contains `part`.

Return the final string `s` after all occurrences of `part` have been removed.

A **substring** is a **contiguous sequence of characters** in a string.

---

## 🔍 Examples

### **Example 1**
#### **Input:**
```ruby
s = "daabcbaabcbc"
part = "abc"

Output:

"dab"

Explanation:
	1.	s = "daabcbaabcbc", remove "abc" at index 2 → s = "dabaabcbc"
	2.	s = "dabaabcbc", remove "abc" at index 4 → s = "dababc"
	3.	s = "dababc", remove "abc" at index 3 → s = "dab"

Now s has no occurrences of "abc".

Example 2

Input:

s = "axxxxyyyyb"
part = "xy"

Output:

"ab"

Explanation:
	1.	s = "axxxxyyyyb", remove "xy" at index 4 → s = "axxxyyyb"
	2.	s = "axxxyyyb", remove "xy" at index 3 → s = "axxyyb"
	3.	s = "axxyyb", remove "xy" at index 2 → s = "axyb"
	4.	s = "axyb", remove "xy" at index 1 → s = "ab"

Now s has no occurrences of "xy".

🔹 Constraints
	•	(1 \leq s.length \leq 1000)
	•	(1 \leq part.length \leq 1000)
	•	s and part consist of lowercase English letters only.