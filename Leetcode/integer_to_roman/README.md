# 12. Integer to Roman
## Difficulty: Medium
## Topics: Hash Table, Math, String
## Companies: Wix, Amazon, TikTok, Microsoft, LinkedIn Twitter, Google, Bloomberg, Adobe, IBM, Apple, Salesforce, Geico, Yahoo, Uber, Meta, Atlassian, Oracle

### Problem Description

Seven different symbols represent Roman numerals with the following values:

| Symbol | Value |
|--------|-------|
| I      | 1     |
| V      | 5     |
| X      | 10    |
| L      | 50    |
| C      | 100   |
| D      | 500   |
| M      | 1000  |

Roman numerals are formed by appending the conversions of decimal place values from highest to lowest. Converting a decimal place value into a Roman numeral follows these rules:

1. **Maximal Value Rule**: If the value does not start with 4 or 9, select the symbol of the maximal value that can be subtracted from the input, append that symbol to the result, subtract its value, and convert the remainder to a Roman numeral.
2. **Subtractive Form Rule**: If the value starts with 4 or 9, use the subtractive form. For example, 4 is represented as `IV` (1 less than 5), and 9 as `IX` (1 less than 10). The subtractive forms are: 4 (IV), 9 (IX), 40 (XL), 90 (XC), 400 (CD), and 900 (CM).
3. **Consecutive Rule**: Only powers of 10 (I, X, C, M) can be appended consecutively at most 3 times. If a symbol needs to be appended 4 times, use the subtractive form.

Given an integer, convert it to a Roman numeral.

### Examples

#### Example 1:
**Input:**  
`num = 3749`

**Output:**  
`"MMMDCCXLIX"`

**Explanation:**  
- 3000 = MMM (1000 + 1000 + 1000)
- 700 = DCC (500 + 100 + 100)
- 40 = XL (50 - 10)
- 9 = IX (10 - 1)

#### Example 2:
**Input:**  
`num = 58`

**Output:**  
`"LVIII"`

**Explanation:**  
- 50 = L
- 8 = VIII

#### Example 3:
**Input:**  
`num = 1994`

**Output:**  
`"MCMXCIV"`

**Explanation:**  
- 1000 = M
- 900 = CM (1000 - 100)
- 90 = XC (100 - 10)
- 4 = IV (5 - 1)

### Constraints:
- `1 <= num <= 3999`