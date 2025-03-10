# 19. Remove Nth Node From End of List

**Difficulty:** Medium  
**Topics:** Linked List, Two Pointers  
**Companies:** Meta, Google, Amazon, TCS, Microsoft, Apple, Bloomberg, Oracle, Adobe, Yahoo, Uber, TikTok, Nvidia, PayPal, Qualcomm, Capgemini  

## Problem Statement

Given the head of a **singly linked list**, remove the **nth node from the end** of the list and return its head.

## Example 1:

### **Input:**
```plaintext
head = [1,2,3,4,5], n = 2

Output:

[1,2,3,5]

Example 2:

Input:

head = [1], n = 1

Output:

[]

Example 3:

Input:

head = [1,2], n = 1

Output:

[1]

Constraints:
	•	The number of nodes in the list is sz.
	•	1 <= sz <= 30
	•	0 <= Node.val <= 100
	•	1 <= n <= sz

Follow-up:

Can you solve this problem in one pass?
