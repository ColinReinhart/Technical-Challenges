# 1669. Merge In Between Linked Lists
## Medium

### Topics:
- Linked List

### Companies:
- Unknown

You are given two linked lists: `list1` and `list2` of sizes `n` and `m` respectively.

Remove `list1`'s nodes from the `(a+1)th` node to the `bth` node, and put `list2` in their place.

The blue edges and nodes in the following figure indicate the result:

![ll1]

Build the result list and return its head.

**Example 1:**

![ll2]

Input: `list1 = [10,1,13,6,9,5], a = 3, b = 4, list2 = [1000000,1000001,1000002]`

Output: `[10,1,13,1000000,1000001,1000002,5]`

Explanation: We remove the nodes 3 and 4 and put the entire `list2` in their place. 

**Example 2:**

![ll3]

Input: `list1 = [0,1,2,3,4,5,6], a = 2, b = 5, list2 = [1000000,1000001,1000002,1000003,1000004]`

Output: `[0,1,1000000,1000001,1000002,1000003,1000004,6]`

Explanation: 

**Constraints:**
- `3 <= list1.length <= 104`
- `1 <= a <= b < list1.length - 1`
- `1 <= list2.length <= 104`

[ll1]:/ico/mergelinkedlists1.png
[ll2]:/ico/mergelinkedlists2.png
[ll3]:/ico/merge_linked_list_ex2.png