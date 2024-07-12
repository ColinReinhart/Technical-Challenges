# 1717. Maximum Score From Removing Substrings

## Medium

### Topics
- String
- Stack
- Greedy

### Companies
- Google

### Hint
You are given a string `s` and two integers `x` and `y`. You can perform two types of operations any number of times:

1. Remove substring "ab" and gain `x` points.
   - For example, when removing "ab" from "cabxbae" it becomes "cxbae".
2. Remove substring "ba" and gain `y` points.
   - For example, when removing "ba" from "cabxbae" it becomes "cabxe".

Return the maximum points you can gain after applying the above operations on `s`.

### Examples

#### Example 1:
```plaintext
Input: s = "cdbcbbaaabab", x = 4, y = 5
Output: 19
Explanation:
- Remove the "ba" underlined in "cdbcbbaaabab". Now, s = "cdbcbbaaab" and 5 points are added to the score.
- Remove the "ab" underlined in "cdbcbbaaab". Now, s = "cdbcbbaa" and 4 points are added to the score.
- Remove the "ba" underlined in "cdbcbbaa". Now, s = "cdbcba" and 5 points are added to the score.
- Remove the "ba" underlined in "cdbcba". Now, s = "cdbc" and 5 points are added to the score.
Total score = 5 + 4 + 5 + 5 = 19.
```

#### Example 2:
```plaintext
Input: s = "aabbaaxybbaabb", x = 5, y = 4
Output: 20
```

### Constraints
- `1 <= s.length <= 10^5`
- `1 <= x, y <= 10^4`
- `s` consists of lowercase English letters.
