# 3108. Minimum Cost Walk in Weighted Graph

## **Difficulty:** Hard  
## **Topics:** Array, Bit Manipulation, Union Find, Graph  
## **Companies:** DE Shaw, Amazon  

---

## **Problem Statement**

There is an **undirected weighted graph** with `n` vertices labeled from `0` to `n - 1`.

You are given:  
- An **integer** `n`, representing the number of vertices.  
- An **array** `edges`, where `edges[i] = [ui, vi, wi]` indicates an edge between **vertices** `ui` and `vi` with a **weight** of `wi`.

### **Definition of a Walk**  
A **walk** on a graph is a sequence of **vertices and edges** where:
- The **walk starts and ends at a vertex**.
- Each **edge connects the previous and next vertex** in the sequence.
- A **walk may visit the same edge or vertex multiple times**.

### **Cost of a Walk**  
The **cost** of a walk starting at node `u` and ending at node `v` is defined as the **bitwise AND** of the **weights** of the edges traversed during the walk.

Formally, if the sequence of edge weights encountered during the walk is:

w0, w1, w2, …, wk

Then, the cost is calculated as:

w0 & w1 & w2 & … & wk

where `&` denotes the **bitwise AND** operator.

---

## **Queries**
You are also given a **2D array** `query`, where:

query[i] = [si, ti]

Each query asks for the **minimum cost** of the walk from **vertex si to vertex ti**.

- If a walk **exists**, return the **minimum possible cost**.
- If **no walk exists**, return `-1`.

### **Return**  
An **array** `answer`, where `answer[i]` represents the **minimum cost** of a walk for query `i`.

---

## **Examples**

### **Example 1**
#### **Input:**
```ruby
n = 5
edges = [[0,1,7],[1,3,7],[1,2,1]]
query = [[0,3],[3,4]]

Output:

[1, -1]

Explanation:
```
![mcwiwg1]
```
	•	To achieve the cost of 1 in the first query, follow the path:

0 -> 1 (weight 7) -> 1 -> 2 (weight 1) -> 2 -> 1 (weight 1) -> 1 -> 3 (weight 7)

The bitwise AND of these weights results in 1.

	•	In the second query, there is no walk between nodes 3 and 4, so the answer is -1.

Example 2

Input:

n = 3
edges = [[0,2,7],[0,1,15],[1,2,6],[1,2,1]]
query = [[1,2]]

Output:

[0]

Explanation:
```
![mcwiwg2]
```

	•	To achieve the cost of 0, follow the path:

1 -> 2 (weight 1) -> 2 -> 1 (weight 6) -> 1 -> 2 (weight 1)

The bitwise AND of these weights results in 0.

Constraints
	•	2 <= n <= 10^5
	•	0 <= edges.length <= 10^5
	•	edges[i].length == 3
	•	0 <= ui, vi <= n - 1
	•	ui != vi
	•	0 <= wi <= 10^5
	•	1 <= query.length <= 10^5
	•	query[i].length == 2
	•	0 <= si, ti <= n - 1
	•	si != ti
```
[mcwiwg1]:/ico/mcwiwg1.png
[mcwiwg2]:/ico/mcwiwg2.png