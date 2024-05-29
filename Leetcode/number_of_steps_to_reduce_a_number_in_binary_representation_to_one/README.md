# 1404. Number of Steps to Reduce a Number in Binary Representation to One

**Medium**

## Description

Given the binary representation of an integer as a string `s`, return the number of steps to reduce it to 1 under the following rules:

- If the current number is even, you have to divide it by 2.
- If the current number is odd, you have to add 1 to it.

It is guaranteed that you can always reach one for all test cases.

## Examples

### Example 1

**Input:**
```ruby
s = "1101"
```

**Output:**
```ruby
6
```

**Explanation:** 
"1101" corresponds to the number 13 in decimal representation.

1. Step 1: 13 is odd, add 1 to get 14.
2. Step 2: 14 is even, divide by 2 to get 7.
3. Step 3: 7 is odd, add 1 to get 8.
4. Step 4: 8 is even, divide by 2 to get 4.
5. Step 5: 4 is even, divide by 2 to get 2.
6. Step 6: 2 is even, divide by 2 to get 1.

### Example 2

**Input:**
```ruby
s = "10"
```

**Output:**
```ruby
1
```

**Explanation:** 
"10" corresponds to the number 2 in decimal representation.

1. Step 1: 2 is even, divide by 2 to get 1.

### Example 3

**Input:**
```ruby
s = "1"
```

**Output:**
```ruby
0
```

## Constraints

- \(1 \leq s.length \leq 500\)
- `s` consists of characters '0' or '1'
- `s[0] == '1'`

## Topics

- String
- Bit Manipulation
- Simulation

## Companies

- Microsoft
- Amazon

## Hint

Consider simulating the process of reducing the binary number to 1 by handling each bit from the least significant to the most significant, applying the rules for odd and even numbers appropriately.




