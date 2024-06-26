# 1382. Balance a Binary Search Tree
**Difficulty**: Medium  
**Topics**: Tree, Depth-First Search, Binary Search Tree, Recursion, Binary Tree  
**Companies**: Microsoft, Facebook, Google, Amazon

## Problem Statement

Given the root of a binary search tree, return a balanced binary search tree with the same node values. If there is more than one answer, return any of them.

A binary search tree is balanced if the depth of the two subtrees of every node never differs by more than 1.

## Examples

### Example 1

![babst1]

**Input**: 
```ruby
root = [1, null, 2, null, 3, null, 4, null, null]
```
**Output**: 
```ruby
[2, 1, 3, null, null, null, 4]
```
**Explanation**: 
This is not the only correct answer, `[3, 1, 4, null, 2]` is also correct.

### Example 2

![babst2]

**Input**: 
```ruby
root = [2, 1, 3]
```
**Output**: 
```ruby
[2, 1, 3]
```

## Constraints

- The number of nodes in the tree is in the range `[1, 10^4]`.
- `1 <= Node.val <= 10^5`

[babst1]:/ico/balance1-tree.jpg
[babst2]:/ico/balanced2-tree.jpg
