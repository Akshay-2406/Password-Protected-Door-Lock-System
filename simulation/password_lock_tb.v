# 🧪 Simulation Setup & Test Cases

This directory contains the testbench (`password_lock_tb.v`) used in **ModelSim** to verify access control behavior.

| Test Case | Input `key` | `key_strobe` | `unlock_led` | `error_led` | `locked_led` | Expected Result |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| **Idle** | `4'b0000` | `0` | `0` | `0` | `1` | Locked |
| **Invalid** | `4'b0101` | `1` | `0` | `1` | `1` | Error Flagged |
| **Valid** | `4'b1010` | `1` | `1` | `0` | `0` | Unlocked[cite: 2] |
