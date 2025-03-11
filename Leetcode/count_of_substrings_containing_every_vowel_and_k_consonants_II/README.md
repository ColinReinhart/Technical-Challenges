# 3306. Count of Substrings Containing Every Vowel and K Consonants II

## **Difficulty:** Medium  
## **Topics:** Hash Table, String, Sliding Window  

---

## **Problem Statement**

You are given a string `word` and a non-negative integer `k`.

Return the **total number of substrings** of `word` that:

- Contain **every vowel** ('a', 'e', 'i', 'o', and 'u') **at least once**.
- Contain **exactly `k` consonants**.

---

## **Examples**

### **Example 1**

**Input:**
```ruby
word = "aeioqq"
k = 1

Output:

0

Explanation:
There is no substring that contains every vowel and exactly 1 consonant.

Example 2

Input:

word = "aeiou"
k = 0

Output:

1

Explanation:
The only valid substring is "aeiou" itself, which contains every vowel and zero consonants.

Example 3

Input:

word = "ieaouqqieaouqq"
k = 1

Output:

3

Explanation:
The valid substrings are:
	•	"ieaouq" (from indices 0 to 5)
	•	"qieaou" (from indices 6 to 11)
	•	"ieaouq" (from indices 7 to 12)

Each contains every vowel and exactly 1 consonant.

Example 4

Input:

word = "iqeaouqi"
k = 2

Output:

3

Explanation:
The valid substrings are:
	•	"iqeaou" (from indices 0 to 5)
	•	"qeaouq" (from indices 1 to 6)
	•	"eaouqi" (from indices 2 to 7)

Constraints
	•	5 <= word.length <= 2 * 10^5
	•	word consists only of lowercase English letters.
	•	0 <= k <= word.length - 5

Notes
	•	The vowels are 'a', 'e', 'i', 'o', 'u'.
	•	Substrings can overlap as long as they meet the given conditions.
	•	The algorithm should be optimized for large inputs.
