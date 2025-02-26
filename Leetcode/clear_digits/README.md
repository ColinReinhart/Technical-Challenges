# 3174. Clear Digits

**Difficulty:** Easy  
**Topics:** String, Stack, Simulation  
**Companies:** Google, Bloomberg, Flexera  

---

## 📜 Problem Statement
You are given a string `s` consisting of **lowercase English letters and digits**.

Your task is to **remove all digits** by applying the following operation **repeatedly**:

1. **Find the first digit** in the string.
2. **Delete that digit** and the **closest non-digit character to its left**.
3. Repeat this process **until no digits remain**.

Return the **resulting string** after removing all digits.

---

## 🔍 Examples

### Example 1
#### **Input:**
```ruby
s = "abc"

Output:

"abc"

Explanation:

There are no digits in the string, so no changes are made.

Example 2

Input:

s = "cb34"

Output:

""

Explanation:
	1.	First, remove 3 and the closest non-digit (b), resulting in "c4".
	2.	Next, remove 4 and the closest non-digit (c), resulting in "".

🔹 Constraints
	•	(1 \leq s.length \leq 100)
	•	s consists only of lowercase English letters and digits.
	•	The input is guaranteed to be processable, meaning all digits can be removed.
