# 1552. Magnetic Force Between Two Balls

**Difficulty**: Medium  
**Topics**: Array, Binary Search, Greedy  
**Companies**: Amazon, Roblox  

## Problem Statement

In the universe Earth C-137, Rick discovered a special form of magnetic force between two balls if they are put in his newly invented basket. Rick has `n` empty baskets, the `i-th` basket is at `position[i]`. Morty has `m` balls and needs to distribute the balls into the baskets such that the minimum magnetic force between any two balls is maximum.

Rick stated that the magnetic force between two different balls at positions `x` and `y` is `|x - y|`.

Given the integer array `position` and the integer `m`, return the required force.

## Examples

### Example 1

![mfbtb]

**Input**: 
```ruby
position = [1,2,3,4,7]
m = 3
```

**Output**: 
```ruby
3
```

**Explanation**: Distributing the 3 balls into baskets at positions 1, 4, and 7 will make the magnetic force between ball pairs [3, 3, 6]. The minimum magnetic force is 3. We cannot achieve a larger minimum magnetic force than 3.

### Example 2

**Input**: 
```ruby
position = [5,4,3,2,1,1000000000]
m = 2
```

**Output**: 
```ruby
999999999
```

**Explanation**: We can use baskets 1 and 1000000000.

## Constraints

- `n == position.length`
- `2 <= n <= 10^5`
- `1 <= position[i] <= 10^9`
- All integers in `position` are distinct.
- `2 <= m <= position.length`

![mfbtb]: /ico/mfbtb.jpeg
