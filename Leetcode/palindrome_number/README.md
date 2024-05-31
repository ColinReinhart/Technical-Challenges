# 9. Palindrome Number

**Difficulty**: Easy

## Description

Given an integer `x`, return `true` if `x` is a palindrome, and `false` otherwise.

## Examples

### Example 1

**Input**:
```ruby
x = 121
```

**Output**:
```ruby
true
```

**Explanation**:
- `121` reads as `121` from left to right and from right to left.

### Example 2

**Input**:
```ruby
x = -121
```

**Output**:
```ruby
false
```

**Explanation**:
- From left to right, it reads `-121`. From right to left, it becomes `121-`. Therefore it is not a palindrome.

### Example 3

**Input**:
```ruby
x = 10
```

**Output**:
```ruby
false
```

**Explanation**:
- Reads `01` from right to left. Therefore it is not a palindrome.

## Constraints

- \(-2^{31} \leq x \leq 2^{31} - 1\)

## Follow Up

- Could you solve it without converting the integer to a string?

## Topics

- Math
- Two Pointers

## Companies

- Amazon
- Google
- Facebook
- Microsoft

## Hint

To check if an integer is a palindrome, you can compare the digits from the start and end moving towards the center. If they are the same, then the number is a palindrome. Consider edge cases like negative numbers and numbers with trailing zeros.