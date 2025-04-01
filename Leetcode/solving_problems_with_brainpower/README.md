# 🧠 2140. Solving Questions With Brainpower

**Difficulty:** Medium  
**Topics:** Array, Dynamic Programming  
**Companies:** Amazon, Bloomberg

---

## 📝 Problem Description

You are given a 0-indexed 2D integer array `questions` where `questions[i] = [points_i, brainpower_i]`.

You are walking through a quiz where, at each question `i`:

- If you solve it, you earn `points_i` points.
- But solving it means you **must skip** the next `brainpower_i` questions.

You must decide whether to solve or skip each question in order to **maximize your total score**.

---

## 🔁 Rules

- You must go through the quiz from left to right.
- For each question, you can either:
  - **Solve it** and add the points, but skip the next `brainpower` questions.
  - **Skip it** and move to the next question.

---

## ✨ Goal

Return the **maximum total points** you can earn by the end of the quiz.

---

## 🔍 Examples

### Example 1

**Input:**

```ruby
questions = [[3,2],[4,3],[4,4],[2,5]]

Output:

5

Explanation:
	•	Solve question 0 → earn 3, skip 2 questions
	•	Then solve question 3 → earn 2
	•	Total = 3 + 2 = 5

⸻

Example 2

Input:

questions = [[1,1],[2,2],[3,3],[4,4],[5,5]]

Output:

7

Explanation:
	•	Solve question 0 → earn 1, skip 1
	•	Solve question 2 → earn 3, skip 3
	•	Total = 1 + 3 = 4
	•	But better option: solve question 1 (2), then question 4 (5) → total = 7

⸻

✅ Constraints
	•	1 <= questions.length <= 10^5
	•	questions[i].length == 2
	•	1 <= points_i, brainpower_i <= 10^5