### 731. My Calendar II

**Difficulty**: Medium  
**Tags**: Binary Search, Tree, Design

---

### Problem Statement

You are implementing a program to use as your calendar. We can add a new event if adding the event will not cause a **triple booking**.

A **triple booking** happens when three events have some non-empty intersection (i.e., some moment is common to all three events).

Each event is represented as a pair of integers `[start, end)` that represents a booking on the half-open interval `[start, end)`, which includes `start` but excludes `end`.

Implement the `MyCalendarTwo` class:

- `MyCalendarTwo()` Initializes the calendar object.
- `boolean book(int start, int end)` Returns `true` if the event can be added to the calendar successfully without causing a triple booking. Otherwise, it returns `false` and does not add the event.

---

### Example

**Input:**

``` 
["MyCalendarTwo", "book", "book", "book", "book", "book", "book"]
[[], [10, 20], [50, 60], [10, 40], [5, 15], [5, 10], [25, 55]]
```

**Output:**

```
[null, true, true, true, false, true, true]
```

**Explanation:**

```ruby
MyCalendarTwo myCalendarTwo = new MyCalendarTwo();
myCalendarTwo.book(10, 20);  # returns true, no overlap
myCalendarTwo.book(50, 60);  # returns true, no overlap
myCalendarTwo.book(10, 40);  # returns true, double booking allowed
myCalendarTwo.book(5, 15);   # returns false, triple booking detected
myCalendarTwo.book(5, 10);   # returns true, no triple booking
myCalendarTwo.book(25, 55);  # returns true, double booking allowed
```

---

### Constraints:

- `0 <= start < end <= 10^9`
- At most `1000` calls will be made to `book`.

---

### Hints:

- Track overlapping intervals carefully and ensure no time slot is booked more than twice.
