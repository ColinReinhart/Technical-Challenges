# 10. Regular Expression Matching

**Hard**

## Topics
- Dynamic Programming
- String Matching

## Companies
- [Your Company List Here]

## Problem Statement
Given an input string `s` and a pattern `p`, implement regular expression matching with support for `.` and `*` where:

- `.` Matches any single character.
- `*` Matches zero or more of the preceding element.

The matching should cover the entire input string (not partial).

## Examples

### Example 1
**Input:** 
```plaintext
s = "aa", p = "a"
```
**Output:**
```plaintext
false
```
**Explanation:** `"a"` does not match the entire string `"aa"`.

### Example 2
**Input:** 
```plaintext
s = "aa", p = "a*"
```
**Output:**
```plaintext
true
```
**Explanation:** `'*'` means zero or more of the preceding element, `'a'`. Therefore, by repeating `'a'` once, it becomes `"aa"`.

### Example 3
**Input:** 
```plaintext
s = "ab", p = ".*"
```
**Output:**
```plaintext
true
```
**Explanation:** `".*"` means "zero or more (`*`) of any character (`.`)".

## Constraints
- `1 <= s.length <= 20`
- `1 <= p.length <= 20`
- `s` contains only lowercase English letters.
- `p` contains only lowercase English letters, `.` and `*`.
- It is guaranteed for each appearance of the character `*`, there will be a previous valid character to match.
