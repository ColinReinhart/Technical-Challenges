# Reverse Digits of a 32-bit Signed Integer

**Objective**: 
Given a signed 32-bit integer `x`, return `x` with its digits reversed. If reversing `x` causes the value to go outside the signed 32-bit integer range `[-2^31, 2^31 - 1]`, then return `0`. Additionally, assume the environment does not allow you to store 64-bit integers (signed or unsigned).

## Example 1

**Input**:
```ruby
x = 123
```

**Output**:
```ruby
321
```

### Breakdown

1. **Initial Value**: 
   - `x = 123`
   
2. **Reversing Digits**:
   - Extract the last digit: `3` (from `123`).
   - Extract the next digit: `2` (remaining `12`).
   - Extract the first digit: `1` (remaining `1`).
   - Combine these digits to form the number: `321`.

3. **Check Range**:
   - `321` is within the 32-bit signed integer range (`[-2,147,483,648, 2,147,483,647]`).

4. **Return Value**:
   - Since `321` is within the valid range, return `321`.

## Edge Cases to Consider

1. **Negative Numbers**:
   - Example: `x = -123`
     - Reversed: `-321`
     - Check range and return `-321`.

2. **Numbers Leading to Overflow**:
   - Example: `x = 1534236469`
     - Reversed would be out of range for 32-bit integer.
     - Return `0`.

3. **Single Digit Numbers**:
   - Example: `x = 5`
     - Reversed: `5`
     - Return `5`.

4. **Zero**:
   - Example: `x = 0`
     - Reversed: `0`
     - Return `0`.

## Constraints

- \(1 \leq s.length \leq 1000\)
- `s` consists of English letters (lower-case and upper-case), ',' and '.'.
- \(1 \leq numRows \leq 1000\)

## Key Concepts and Constraints

1. **32-bit Signed Integer Range**: 
   - The range for a 32-bit signed integer is from `-2^31` to `2^31 - 1` (i.e., `-2,147,483,648` to `2,147,483,647`).

2. **Reversing Digits**: 
   - You need to reverse the digits of the integer. For instance, reversing `123` results in `321`.

3. **Handling Negative Numbers**: 
   - The sign of the number should be preserved when reversed. For example, reversing `-123` results in `-321`.

4. **Overflow Handling**: 
   - If the reversed number exceeds the 32-bit signed integer range, you must return `0`.

5. **No 64-bit Integer Usage**: 
   - You cannot use data types that allow storage beyond 32-bit integers.

By breaking down the example and considering edge cases, you can better understand the steps required to implement the solution while adhering to the constraints provided.