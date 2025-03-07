# 2523. Closest Prime Numbers in Range

## Difficulty: Medium

## Topics: Math, Number Theory

## Companies: TikTok

---

## **Problem Statement**
Given two positive integers `left` and `right`, find two integers `num1` and `num2` such that:

- `left <= num1 < num2 <= right`
- Both `num1` and `num2` are **prime numbers**.
- `num2 - num1` is the **minimum** amongst all other pairs satisfying the above conditions.

Return a **positive integer array** `ans = [num1, num2]`. If multiple pairs satisfy these conditions, return the one with the **smallest `num1` value**. If no such numbers exist, return `[-1, -1]`.

---

## **Examples**

### **Example 1**
#### **Input:**
```ruby
left = 10
right = 19

Output:

[11, 13]

Explanation:

The prime numbers between 10 and 19 are [11, 13, 17, 19].
The closest gap between any pair is 2, which occurs in [11, 13] and [17, 19].
Since 11 is smaller than 17, we return [11, 13].

Example 2

Input:

left = 4
right = 6

Output:

[-1, -1]

Explanation:

There is only one prime number (5) in this range, so no pair can be formed.

Constraints
	•	1 <= left <= right <= 10^6
	•	The range may contain large numbers, so an efficient approach is required.

Hints
	1.	Use the Sieve of Eratosthenes to efficiently find all prime numbers up to right.
	2.	Use a Segmented Sieve Approach to limit memory usage and improve performance.
	3.	Find the closest pair by iterating through the list of primes and keeping track of the minimum difference.
