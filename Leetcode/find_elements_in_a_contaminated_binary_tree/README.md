# 1261. Find Elements in a Contaminated Binary Tree

**Difficulty:** Medium  
**Topics:** Tree, Depth-First Search (DFS), Hash Set  
**Companies:** Amazon, Google, Microsoft  

---

## 📝 Problem Statement

Given a binary tree where all node values have been **contaminated** (set to `-1`), you need to **recover** the original values based on the following rules:

1. The root node has a value of `0`.
2. For any node with value `x`:
   - If the node has a **left child**, then `left.val = 2 * x + 1`
   - If the node has a **right child**, then `right.val = 2 * x + 2`

You must implement the `FindElements` class:

- **`FindElements(TreeNode* root)`**  
  Initializes the object with the contaminated tree and recovers it.

- **`bool find(int target)`**  
  Returns `true` if the `target` value exists in the recovered binary tree, otherwise returns `false`.

---

## 🔹 Example 1

![feiacbt1]

### **Input:**
```ruby
["FindElements", "find", "find"]
[[[-1, null, -1]], [1], [2]]

Output:

[null, false, true]

Explanation:

FindElements findElements = new FindElements([-1,null,-1]); 
findElements.find(1); // returns False 
findElements.find(2); // returns True 
```
🔹 Example 2

![feiacbt2]
```ruby
Input:

["FindElements", "find", "find", "find"]
[[[-1,-1,-1,-1,-1]], [1], [3], [5]]

Output:

[null, true, true, false]

Explanation:

FindElements findElements = new FindElements([-1,-1,-1,-1,-1]);
findElements.find(1); // returns True
findElements.find(3); // returns True
findElements.find(5); // returns False
```
🔹 Example 3

![feiacbt3]
```ruby
Input:

["FindElements", "find", "find", "find", "find"]
[[[-1, null, -1, -1, null, -1]], [2], [3], [4], [5]]

Output:

[null, true, false, false, true]

Explanation:

FindElements findElements = new FindElements([-1,null,-1,-1,null,-1]);
findElements.find(2); // returns True
findElements.find(3); // returns False
findElements.find(4); // returns False
findElements.find(5); // returns True

📌 Constraints
	•	TreeNode.val == -1
	•	The height of the binary tree is ≤ 20.
	•	The total number of nodes is between [1, 10⁴].
	•	The total number of find() calls is between [1, 10⁴].
	•	0 ≤ target ≤ 10⁶.
```
[feiacbt1]:/ico/feiacbt1.jpg
[feiacbt2]:/ico/feiacbt2.jpg
[feiacbt3]:/ico/feiacbt3.jpg