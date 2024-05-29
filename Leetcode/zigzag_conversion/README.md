# 6. Zigzag Conversion

**Medium**

## Description

The string "PAYPALISHIRING" is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

```
P   A   H   N
A P L S I I G
Y   I   R
```

And then read line by line: "PAHNAPLSIIGYIR"

Write the code that will take a string and make this conversion given a number of rows:

```cpp
string convert(string s, int numRows);
```

## Examples

### Example 1

**Input:**
```ruby
s = "PAYPALISHIRING"
numRows = 3
```

**Output:**
```ruby
"PAHNAPLSIIGYIR"
```

### Example 2

**Input:**
```ruby
s = "PAYPALISHIRING"
numRows = 4
```

**Output:**
```ruby
"PINALSIGYAHRPI"
```

**Explanation:**
```
P     I    N
A   L S  I G
Y A   H R
P     I
```

### Example 3

**Input:**
```ruby
s = "A"
numRows = 1
```

**Output:**
```ruby
"A"
```

## Constraints

- \(1 \leq s.length \leq 1000\)
- `s` consists of English letters (lower-case and upper-case), ',' and '.'.
- \(1 \leq numRows \leq 1000\)

## Topics

- String
- Simulation

## Companies

- Google
- Amazon
- Facebook