# Problem Statement: Implement `myAtoi` Function

**Difficulty**: Medium

## Description

Implement the `myAtoi(string s)` function, which converts a string to a 32-bit signed integer. The algorithm for `myAtoi(string s)` is as follows:

1. **Whitespace**: Ignore any leading whitespace characters.
2. **Signedness**: Determine the sign by checking if the next character is `'-'` or `'+'`. Assume positivity if neither is present.
3. **Conversion**: Read the integer by skipping leading zeros until a non-digit character is encountered or the end of the string is reached. If no digits were read, the result is `0`.
4. **Rounding**: If the integer is out of the 32-bit signed integer range `[-2^31, 2^31 - 1]`, round the integer to remain within the range. Specifically, integers less than `-2^31` should be rounded to `-2^31`, and integers greater than `2^31 - 1` should be rounded to `2^31 - 1`.
5. **Return**: Return the integer as the final result.

## Examples

### Example 1

**Input**:
```ruby
s = "42"
```

**Output**:
```ruby
42
```

**Explanation**:
- Step 1: `"42"` (no characters read because there is no leading whitespace)
- Step 2: `"42"` (no characters read because there is neither a `'-'` nor `'+'`)
- Step 3: `"42"` (`"42"` is read in)

### Example 2

**Input**:
```ruby
s = "   -42"
```

**Output**:
```ruby
-42
```

**Explanation**:
- Step 1: `"   -42"` (leading whitespace is read and ignored)
- Step 2: `"   -42"` (`'-'` is read, so the result should be negative)
- Step 3: `"   -42"` (`"42"` is read in, leading zeros ignored in the result)

### Example 3

**Input**:
```ruby
s = "1337c0d3"
```

**Output**:
```ruby
1337
```

**Explanation**:
- Step 1: `"1337c0d3"` (no characters read because there is no leading whitespace)
- Step 2: `"1337c0d3"` (no characters read because there is neither a `'-'` nor `'+'`)
- Step 3: `"1337c0d3"` (`"1337"` is read in; reading stops because the next character is a non-digit)

### Example 4

**Input**:
```ruby
s = "0-1"
```

**Output**:
```ruby
0
```

**Explanation**:
- Step 1: `"0-1"` (no characters read because there is no leading whitespace)
- Step 2: `"0-1"` (no characters read because there is neither a `'-'` nor `'+'`)
- Step 3: `"0-1"` (`"0"` is read in; reading stops because the next character is a non-digit)

### Example 5

**Input**:
```ruby
s = "words and 987"
```

**Output**:
```ruby
0
```

**Explanation**:
- Reading stops at the first non-digit character `'w'`.

## Constraints

- \(0 \leq s.length \leq 200\)
- `s` consists of English letters (lower-case and upper-case), digits (`0-9`), `' '`, `'+'`, `'-'`, and `'.'`.

## Topics

- String Parsing
- Integer Conversion
- Edge Case Handling

## Companies

- Google
- Facebook
- Amazon
- Microsoft