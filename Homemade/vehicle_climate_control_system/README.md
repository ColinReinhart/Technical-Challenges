# Climate Control System

## Difficulty: Medium

## Topics: Conditional Logic, Boolean Logic, Control Systems, Temperature Regulation

---

## **Problem Statement**
You are assigned to program the climate control system of a vehicle.

The system receives four input values:
- **`outside_temp`**: Temperature reading from the exterior thermostat.
- **`in_cabin_temp`**: Temperature reading from the interior thermostat.
- **`hvac_temp`**: Temperature reading from the thermostat located just after the blower motor (just past heating or cooling coils).
- **`set_temp`**: The desired temperature set by the user.

Your goal is to return the following three outputs:
- **`heat`**: A boolean (`true` if heating is needed, `false` if cooling is needed).
- **`recirc`**: A boolean (`true` or `false`) indicating whether to recirculate air inside the cabin.
- **`fan`**: A boolean (`true` for high speed, `false` for low speed).

---

## **Conditions & Rules**

### **1. Heating or Cooling (`heat`)**
- `heat = true` if **`set_temp` is greater than `in_cabin_temp`**, meaning the system needs to increase the temperature.
- `heat = false` if **`set_temp` is less than `in_cabin_temp`**, meaning the system needs to cool the cabin.

### **2. Air Recirculation (`recirc`)**
- `recirc = true` if **`in_cabin_temp` is closer to `set_temp` than `outside_temp`**, meaning recirculating interior air is more efficient.
- Otherwise, `recirc = false` to bring in fresh outside air.

### **3. Fan Speed (`fan`)**
The fan should be set to **high (`true`)** if **both** conditions below are met:

#### **Temperature Difference Condition**
- If `heat = true` (heating required), **`in_cabin_temp` is at least 10 degrees colder** than `set_temp`.
- If `heat = false` (cooling required), **`in_cabin_temp` is at least 10 degrees hotter** than `set_temp`.

#### **HVAC Effectiveness Condition**
- If **`heat = true`**, `hvac_temp` must be **at least 10 degrees higher** than `in_cabin_temp`.
- If **`heat = false`**, `hvac_temp` must be **at least 10 degrees lower** than `in_cabin_temp`.

Otherwise, the fan should run on **low (`false`)** to prevent unnecessary discomfort.

> **Note:** The fan should only be set to **high (`true`)** if the **in-cabin temperature is at least 10 degrees away from the set temperature** AND the HVAC temperature is at least 10 degrees closer to the set temperature than the in-cabin air.

---

## **Example Test Cases**

### **Example 1**
#### **Input:**
```ruby
climate_control(32, 68, 80, 75)
```
#### **Output:**
```ruby
[true, true, false]
```
#### **Explanation:**
- Heat is on because `set_temp (75) > in_cabin_temp (68)`.
- Recirculation is on (`true`) because the inside air is closer to the set temp than the outside air.
- Fan is on low (`false`) because:
  - `in_cabin_temp (68)` less than 10 degrees cooler than `set_temp (75)`.

---

### **Example 2**
#### **Input:**
```ruby
climate_control(90, 72, 60, 68)
```
#### **Output:**
```ruby
[false, true, false]
```
#### **Explanation:**
- Heat is off because `set_temp (68) < in_cabin_temp (72)`.
- Recirculation is off (`true`) because `in_cabin_temp (72)` is closer to `set_temp (68)` than `outside_temp (90)`.
- Fan is on low (`false`) because:
  - `in_cabin_temp (72)` is within 10 degrees of `set_temp (68)`.

---

### **Example 3**
#### **Input:**
```ruby
climate_control(55, 72, 65, 72)
```
#### **Output:**
```ruby
[false, true, false]
```
#### **Explanation:**
- Heat is off because `set_temp (72) == in_cabin_temp (72)`.
- Recirculation is on (`true`) because `in_cabin_temp (72)` is closer to `set_temp (72)` than `outside_temp (55)`.
- Fan is on low (`false`) because:
  - `in_cabin_temp (72) == set_temp (72)`.

---

## **Notes**
- You should aim for an **efficient solution** that runs in constant time `O(1)`, as there are no loops or iterations needed.
- Consider edge cases where `set_temp` is equal to `in_cabin_temp`, meaning no heating or cooling is needed.

