# 2490. Circular Sentence

**Difficulty**: Easy  
**Topics**: String  
**Companies**: Bloomberg  

---

## Problem Description

A **sentence** is a list of words separated by a single space, with no leading or trailing spaces.  
For example: `"Hello World"`, `"HELLO"`, `"hello world hello world"` are all valid sentences.

- Words consist of only uppercase and lowercase English letters.
- Uppercase and lowercase letters are considered different.

A **sentence** is **circular** if:
1. The last character of each word is equal to the first character of the next word.
2. The last character of the last word is equal to the first character of the first word.

Examples of circular sentences:
- `"leetcode exercises sound delightful"`
- `"eetcode"`
- `"leetcode eats soul"`

Non-circular sentences:
- `"Leetcode is cool"`
- `"happy Leetcode"`
- `"Leetcode"`
- `"I like Leetcode"`

Given a string `sentence`, return `true` if it is circular. Otherwise, return `false`.

---

## Examples

### Example 1
**Input**: `sentence = "leetcode exercises sound delightful"`  
**Output**: `true`  
**Explanation**:  
The words in the sentence are `["leetcode", "exercises", "sound", "delightful"]`.
- `"leetcode"`'s last character is equal to `"exercises"`'s first character.
- `"exercises"`'s last character is equal to `"sound"`'s first character.
- `"sound"`'s last character is equal to `"delightful"`'s first character.
- `"delightful"`'s last character is equal to `"leetcode"`'s first character.

The sentence is circular.

### Example 2
**Input**: `sentence = "eetcode"`  
**Output**: `true`  
**Explanation**:  
The word `"eetcode"`'s last character is equal to its first character.  
The sentence is circular.

### Example 3
**Input**: `sentence = "Leetcode is cool"`  
**Output**: `false`  
**Explanation**:  
The words in the sentence are `["Leetcode", "is", "cool"]`.
- `"Leetcode"`'s last character is not equal to `"is"`'s first character.

The sentence is not circular.

---

## Constraints

- \(1 \leq \text{sentence.length} \leq 500\)
- `sentence` consists only of lowercase and uppercase English letters and spaces.
- Words in `sentence` are separated by a single space.
- There are no leading or trailing spaces.