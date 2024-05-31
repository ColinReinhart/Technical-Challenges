# 260. Single Number III

**Medium**

## Description

Given an integer array `nums`, in which exactly two elements appear only once and all the other elements appear exactly twice. Find the two elements that appear only once. You can return the answer in any order.

You must write an algorithm that runs in linear runtime complexity and uses only constant extra space.

## Examples

### Example 1

**Input:**
```ruby
nums = [1, 2, 1, 3, 2, 5]
```

**Output:**
```ruby
[3, 5]
```

**Explanation:** `[5, 3]` is also a valid answer.

### Example 2

**Input:**
```ruby
nums = [-1, 0]
```

**Output:**
```ruby
[-1, 0]
```

### Example 3

**Input:**
```ruby
nums = [0, 1]
```

**Output:**
```ruby
[1, 0]
```

## Constraints

- \(2 \leq \text{nums.length} \leq 3 \times 10^4\)
- \(-2^{31} \leq \text{nums[i]} \leq 2^{31} - 1\)
- Each integer in `nums` will appear twice, only two integers will appear once.

## Topics

- Array
- Bit Manipulation

## Companies

- Facebook
- Adobe
- Bloomberg
- Amazon

## Acceptance Rate

- **Accepted:** 422.6K
- **Submissions:** 602.6K
- **Acceptance Rate:** 70.1%