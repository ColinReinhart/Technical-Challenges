# 2375. Construct Smallest Number From DI String

**Difficulty:** Medium  
**Topics:** String, Backtracking, Stack, Greedy  
**Companies:** Amazon, Goldman Sachs, Josh Technology, Spinny  

---

## 📜 Problem Statement

You are given a **0-indexed string** `pattern` of length `n` consisting of the characters **'I'** (increasing) and **'D'** (decreasing).  

A **0-indexed string** `num` of length `n + 1` is created using the following conditions:

- `num` consists of the **digits '1' to '9'**, where each digit is used **at most once**.
- If `pattern[i] == 'I'`, then `num[i] < num[i + 1]`.
- If `pattern[i] == 'D'`, then `num[i] > num[i + 1]`.

Return the **lexicographically smallest** possible string `num` that meets these conditions.

---

## 🔍 Examples

### **Example 1**
#### **Input:**
```ruby
pattern = "IIIDIDDD"

Output:

"123549876"

Explanation:
	•	At indices 0, 1, 2, and 4, we must have num[i] < num[i+1].
	•	At indices 3, 5, 6, and 7, we must have num[i] > num[i+1].
	•	Some possible values of num are "245639871", "135749862", and "123849765".
	•	The smallest valid sequence is "123549876".

Example 2

Input:

pattern = "DDD"

Output:

"4321"

Explanation:
	•	Some possible values of num are "9876", "7321", and "8742".
	•	The lexicographically smallest valid number is "4321".

🔹 Constraints
	•	(1 \leq pattern.length \leq 8)
	•	pattern consists of only the letters 'I' and 'D'.

