### 14. Longest Common Prefix

**Difficulty**: Easy

**Topics**: String, Trie

**Companies**:

| Amazon (16) | Google (15)  | Meta (15)       | Apple (12)     | Adobe (7)         |
|-------------|--------------|-----------------|----------------|-------------------|
| Bloomberg (6) | Uber (7)     | Microsoft (5)   | IBM (4)        | Yahoo (3)         |
| Accenture (3) | Zoho (4)     | PornHub (2)     | PubMatic (2)   | Walmart Labs (2)  |
| TCS (2)      | Turing (2)   | SAP (2)         | Cognizant (2)  | Expedia (3)       |
| Visa (2)     | Cisco (2)    | Capital One (2) | ByteDance (2)  | Roblox (2)        |
| Salesforce (2) | American Express (2) | Accolite (2) | Yelp            |

---

Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".

#### Example 1:
```
Input: strs = ["flower","flow","flight"]
Output: "fl"
```

#### Example 2:
```
Input: strs = ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.
```

#### Constraints:
- 1 <= strs.length <= 200
- 0 <= strs[i].length <= 200
- strs[i] consists of only lowercase English letters.