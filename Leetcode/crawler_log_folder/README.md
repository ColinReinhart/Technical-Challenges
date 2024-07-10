# 1598. Crawler Log Folder

**Easy**

## Topics
- Array
- String
- Stack

## Companies
- Atlassian
- Mercari
- Linkedin

## Problem Statement
The Leetcode file system keeps a log each time some user performs a change folder operation.

The operations are described below:
- `"../"` : Move to the parent folder of the current folder. (If you are already in the main folder, remain in the same folder).
- `"./"` : Remain in the same folder.
- `"x/"` : Move to the child folder named `x` (This folder is guaranteed to always exist).

You are given a list of strings `logs` where `logs[i]` is the operation performed by the user at the `i`th step.

The file system starts in the main folder, then the operations in `logs` are performed.

Return the minimum number of operations needed to go back to the main folder after the change folder operations.

## Examples

### Example 1
![clf1]
**Input:** 
```plaintext
logs = ["d1/","d2/","../","d21/","./"]
```
**Output:**
```plaintext
2
```
**Explanation:** Use this change folder operation `"../"` 2 times to go back to the main folder.

### Example 2
![clf2]
**Input:** 
```plaintext
logs = ["d1/","d2/","./","d3/","../","d31/"]
```
**Output:**
```plaintext
3
```

### Example 3
**Input:** 
```plaintext
logs = ["d1/","../","../","../"]
```
**Output:**
```plaintext
0
```

## Constraints
- `1 <= logs.length <= 10^3`
- `2 <= logs[i].length <= 10`
- `logs[i]` contains lowercase English letters, digits, '.', and '/'.
- `logs[i]` follows the format described in the statement.
- Folder names consist of lowercase English letters and digits.

[clf1]:/ico/clf1.png
[clf2]:/ico/clf2.png