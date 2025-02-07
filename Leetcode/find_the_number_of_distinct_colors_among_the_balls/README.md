# 3160. Find the Number of Distinct Colors Among the Balls

**Difficulty:** Medium  
**Topics:** Array, Hash Table, Simulation  

## Problem Statement

You are given an integer `limit` and a 2D array `queries` of size `n x 2`.

There are `limit + 1` balls with distinct labels in the range `[0, limit]`. Initially, all balls are uncolored. For every query in `queries` that is of the form `[x, y]`, you mark ball `x` with the color `y`. After each query, you need to find the number of distinct colors among the balls.

Return an array `result` of length `n`, where `result[i]` denotes the number of distinct colors after the `i`-th query.

**Note:** When answering a query, lack of a color will not be considered as a color.

---

## Example 1

### **Input**
```ruby
limit = 4
queries = [[1,4],[2,5],[1,3],[3,4]]

Output

[1,2,2,3]

Explanation
	1.	After query 0: Ball 1 has color 4.
	2.	After query 1: Ball 1 has color 4, and Ball 2 has color 5.
	3.	After query 2: Ball 1 has color 3, and Ball 2 has color 5.
	4.	After query 3: Ball 1 has color 3, Ball 2 has color 5, and Ball 3 has color 4.

Example 2

Input

limit = 4
queries = [[0,1],[1,2],[2,2],[3,4],[4,5]]

Output

[1,2,2,3,4]

Explanation
	1.	After query 0: Ball 0 has color 1.
	2.	After query 1: Ball 0 has color 1, and Ball 1 has color 2.
	3.	After query 2: Ball 0 has color 1, and Balls 1 and 2 have color 2.
	4.	After query 3: Ball 0 has color 1, Balls 1 and 2 have color 2, and Ball 3 has color 4.
	5.	After query 4: Ball 0 has color 1, Balls 1 and 2 have color 2, Ball 3 has color 4, and Ball 4 has color 5.

Constraints
	•	( 1 \leq \text{limit} \leq 10^9 )
	•	( 1 \leq n == \text{queries.length} \leq 10^5 )
	•	( \text{queries}[i].\text{length} == 2 )
	•	( 0 \leq \text{queries}[i][0] \leq \text{limit} )
	•	( 1 \leq \text{queries}[i][1] \leq 10^9 )
