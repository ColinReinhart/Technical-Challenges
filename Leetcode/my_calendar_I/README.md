### 729. My Calendar I

**Difficulty**: Medium  
**Tags**: Binary Search, Tree, Design

---

### Problem Statement

You are implementing a program to use as your calendar. We can add a new event if adding the event will not cause a **double booking**.

A **double booking** happens when two events have some non-empty intersection (i.e., some moment is common to both events).

Each event is represented as a pair of integers `[start, end)` that represents a booking on the half-open interval `[start, end)`, which includes `start` but excludes `end`.

Implement the `MyCalendar` class:

- `MyCalendar()` Initializes the calendar object.
- `boolean book(int start, int end)` Returns `true` if the event can be added to the calendar successfully without causing a double booking. Otherwise, it returns `false` and does not add the event.

---

### Example

**Input:**

``` 
["MyCalendar", "book", "book", "book"]
[[], [10, 20], [15, 25], [20, 30]]
```

**Output:**

```
[null, true, false, true]
```

**Explanation:**

```ruby
MyCalendar myCalendar = new MyCalendar();
myCalendar.book(10, 20); // returns true
myCalendar.book(15, 25); // returns false, event cannot be booked because time 15 is already booked by another event.
myCalendar.book(20, 30); // returns true, event can be booked as it starts after the first event ends.
```

---

### Constraints:

- `0 <= start < end <= 10^9`
- At most `1000` calls will be made to `book`.

---

### Hints:

- Try storing events in sorted order and checking whether the new event overlaps with any existing events.