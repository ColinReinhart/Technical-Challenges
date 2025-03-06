#  Vehicle Climate Control System

**Difficulty:** Medium  
**Topics:** Logic Design, Conditionals, Boolean Logic, Real-world Simulation  

## Problem Description

You are tasked with programming the **climate control system** for a vehicle. The system will receive **user input** for a **desired temperature** (`set_temp`) and three real-time **temperature readings** from different parts of the vehicle:

- **`outside_temp`**: The temperature reading from the exterior thermostat.
- **`in_cabin_temp`**: The temperature reading from the interior thermostat.
- **`hvac_temp`**: The temperature reading from the thermostat located just past the blower motor, measuring the temperature of the air after passing through the heating or cooling system.

## Input

Your function will receive **four integer or float values** representing temperatures:

1. `outside_temp` (temperature outside the vehicle)
2. `in_cabin_temp` (temperature inside the vehicle)
3. `hvac_temp` (temperature of the air currently being output by the HVAC system)
4. `set_temp` (desired cabin temperature set by the user)

## Output

Your function should return **three Boolean values** representing the control states:

1. **`recirc`** (Boolean) – `true` if air recirculation should be enabled, `false` if fresh outside air should be used.
2. **`fan`** (Boolean) – `true` for **high fan speed**, `false` for **low fan speed**.
3. **`heat`** (Boolean) – `true` if the system should **heat**, `false` if it should **cool**.

## Logic & Conditions

### **1. Heating & Cooling (`heat`)**
- If `set_temp` is **higher** than `in_cabin_temp`, **`heat = true`** (indicating a call for heat).
- If `set_temp` is **lower** than `in_cabin_temp`, **`heat = false`** (indicating a call for cooling).

### **2. Air Recirculation (`recirc`)**
- `recirc = true` if **`in_cabin_temp` is closer to `set_temp`** than `outside_temp`.  
  (This instructs the HVAC system to recirculate cabin air rather than drawing in outside air.)

### **3. Fan Speed (`fan`)**
The fan should be set to **high (`true`)** if both conditions below are met:

#### **Temperature Difference Condition**
- The absolute difference between `outside_temp` and `in_cabin_temp` is **≥ 10** degrees.

#### **HVAC Effectiveness Condition**
- If **`heat = true`**, `hvac_temp` must be **at least 10 degrees higher** than `in_cabin_temp`.
- If **`heat = false`**, `hvac_temp` must be **at least 10 degrees lower** than `in_cabin_temp`.

Otherwise, the fan should run on **low (`false`)** to prevent unnecessary discomfort.

---

## Example Test Cases

### **Test Case 1: Heating Needed, Recirculation Off**
#### **Input:**
```plaintext
outside_temp = 30
in_cabin_temp = 40
hvac_temp = 50
set_temp = 60

Output:

recirc = false  # Outside air is closer to the target than cabin air.
fan = true      # Large temperature difference and HVAC output is effective.
heat = true     # Heating is required (set_temp > in_cabin_temp).

Test Case 2: Cooling Needed, Recirculation On

Input:

outside_temp = 90
in_cabin_temp = 75
hvac_temp = 60
set_temp = 65

Output:

recirc = true   # Cabin air is closer to set_temp than outside air.
fan = true      # Large temperature difference and HVAC output is effective.
heat = false    # Cooling is required (set_temp < in_cabin_temp).

Test Case 3: No Major HVAC Action Needed

Input:

outside_temp = 72
in_cabin_temp = 71
hvac_temp = 70
set_temp = 72

Output:

recirc = true   # Cabin temp is closer to set_temp.
fan = false     # No major temperature difference; no need for high fan speed.
heat = false    # Cabin temp is close to desired temp.

Additional Notes
	•	Ensure edge cases are considered, such as:
	•	When outside_temp is equal to in_cabin_temp.
	•	When hvac_temp is not significantly different from in_cabin_temp.
	•	Extreme temperatures (e.g., outside_temp = -20, set_temp = 75).
	•	The function should be efficient and avoid unnecessary computations.

