# 773. Sliding Puzzle

**Difficulty:** Hard  
**Topics:** Breadth-First Search (BFS), Matrix  

---

## Problem Description

On a 2x3 board, there are five tiles labeled from 1 to 5 and an empty square represented by `0`. A move consists of choosing `0` and a 4-directionally adjacent number and swapping them.

The state of the board is solved if and only if the board is `[[1,2,3],[4,5,0]]`.

Given the puzzle `board`, return the least number of moves required to solve the board. If it is impossible to solve, return `-1`.

---

## Examples

### Example 1:
**Input:**  
`board = [[1,2,3],[4,0,5]]`  
**Output:**  
`1`  
**Explanation:**  
Swap `0` and `5` in one move.

---

### Example 2:
**Input:**  
`board = [[1,2,3],[5,4,0]]`  
**Output:**  
`-1`  
**Explanation:**  
No number of moves will make the board solved.

---

### Example 3:
**Input:**  
`board = [[4,1,2],[5,0,3]]`  
**Output:**  
`5`  
**Explanation:**  
The smallest number of moves that solves the board is 5.  

**Path:**  
1. After move 0: `[[4,1,2],[5,0,3]]`  
2. After move 1: `[[4,1,2],[0,5,3]]`  
3. After move 2: `[[0,1,2],[4,5,3]]`  
4. After move 3: `[[1,0,2],[4,5,3]]`  
5. After move 4: `[[1,2,0],[4,5,3]]`  
6. After move 5: `[[1,2,3],[4,5,0]]`

---

## Constraints

- `board.length == 2`
- `board[i].length == 3`
- `0 <= board[i][j] <= 5`
- Each value `board[i][j]` is unique.