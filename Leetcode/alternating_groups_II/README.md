3208. Alternating Groups II
Difficulty: Medium
Topics: Array, Sliding Window
Companies: Google, Samsara
Hint
There is a circle of red and blue tiles. You are given an array of integers colors and an integer k. The color of tile i is represented by colors[i]:

colors[i] == 0 means that tile i is red.
colors[i] == 1 means that tile i is blue.
An alternating group is every k contiguous tiles in the circle with alternating colors (each tile in the group except the first and last one has a different color from its left and right tiles).

Return the number of alternating groups.

Note that since colors represents a circle, the first and the last tiles are considered to be next to each other.

 

Example 1:

Input: colors = [0,1,0,1,0], k = 3

Output: 3

Explanation:

![agii1]

Alternating groups:

![agii2]
![agii3]
![agii4]

Example 2:

Input: colors = [0,1,0,0,1,0,1], k = 6

Output: 2

Explanation:

![agii5]

Alternating groups:

![agii6]
![agii7]

Example 3:

Input: colors = [1,1,0,1], k = 4

Output: 0

Explanation:


![agii8]
 

Constraints:

3 <= colors.length <= 105
0 <= colors[i] <= 1
3 <= k <= colors.length

[agii1]:/ico/agii1.png
[agii2]:/ico/agii2.png
[agii3]:/ico/agii3.png
[agii4]:/ico/agii4.png
[agii5]:/ico/agii5.png
[agii6]:/ico/agii6.png
[agii7]:/ico/agii7.png
[agii8]:/ico/agii8.png