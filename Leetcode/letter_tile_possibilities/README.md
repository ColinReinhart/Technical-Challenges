# 1079. Letter Tile Possibilities

**Difficulty:** Medium  
**Topics:** Hash Table, String, Backtracking, Counting  
**Companies:** Google, Amazon  

---

## 📜 Problem Statement

You have `n` tiles, where each tile has **one letter** `tiles[i]` printed on it.  

Return the **number of possible non-empty sequences** of letters you can make using the letters printed on those tiles.

---

## 🔍 Examples

### **Example 1**
#### **Input:**
```ruby
tiles = "AAB"

Output:

8

Explanation:

The possible sequences are:
"A", "B", "AA", "AB", "BA", "AAB", "ABA", "BAA".

Example 2

Input:

tiles = "AAABBC"

Output:

188

Example 3

Input:

tiles = "V"

Output:

1

🔹 Constraints
	•	( 1 \leq tiles.length \leq 7 )
	•	tiles consists of uppercase English letters only.