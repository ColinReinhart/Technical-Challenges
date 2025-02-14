# 1352. Product of the Last K Numbers

**Difficulty:** Medium  
**Topics:** Array, Design, Prefix Product  
**Companies:** Google, Amazon, Microsoft  

---

## 📜 Problem Statement

Design an algorithm that accepts a **stream of integers** and retrieves the **product of the last k integers** in the stream.

Implement the `ProductOfNumbers` class:

- **`ProductOfNumbers()`** – Initializes the object with an **empty stream**.
- **`void add(int num)`** – Appends the integer `num` to the stream.
- **`int getProduct(int k)`** – Returns the **product of the last `k` numbers** in the current list.
  - You can assume that the **current list always has at least `k` numbers**.
  - The **test cases ensure** that the product of any sequence will fit into a **32-bit integer**.

---

## 🔍 Example

### **Input**
```ruby
["ProductOfNumbers", "add", "add", "add", "add", "add", "getProduct", "getProduct", "getProduct", "add", "getProduct"]
[[], [3], [0], [2], [5], [4], [2], [3], [4], [8], [2]]

Output

[null, null, null, null, null, null, 20, 40, 0, null, 32]

Explanation

productOfNumbers = ProductOfNumbers.new()
productOfNumbers.add(3)   # [3]
productOfNumbers.add(0)   # [3, 0]
productOfNumbers.add(2)   # [3, 0, 2]
productOfNumbers.add(5)   # [3, 0, 2, 5]
productOfNumbers.add(4)   # [3, 0, 2, 5, 4]
productOfNumbers.getProduct(2)  # 20 (5 * 4)
productOfNumbers.getProduct(3)  # 40 (2 * 5 * 4)
productOfNumbers.getProduct(4)  # 0 (0 * 2 * 5 * 4)
productOfNumbers.add(8)   # [3, 0, 2, 5, 4, 8]
productOfNumbers.getProduct(2)  # 32 (4 * 8)

🔹 Constraints
	•	( 0 \leq num \leq 100 )
	•	( 1 \leq k \leq 4 \times 10^4 )
	•	At most ( 4 \times 10^4 ) calls will be made to add and getProduct.
	•	The product of the stream at any time will fit into a 32-bit integer.

💡 Follow-up
	•	Can you implement both getProduct and add to work in O(1) time complexity instead of O(k)?