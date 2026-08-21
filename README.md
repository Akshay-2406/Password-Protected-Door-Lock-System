# 🔒 Password-Protected Door Lock System (FPGA Implementation)

A Verilog HDL implementation of a digital password-protected security access controller designed and synthesized for the **Altera DE2-115 (Cyclone IV E)** FPGA board. The system validates input key codes against a hardcoded 4-bit password and provides visual status feedback using LED indicators.

---

## 📌 Project Overview
* **Hardware Target:** Altera DE2-115 Development Board (Cyclone IV EP4CE115F29C7)
* **Design Language:** Verilog HDL
* **Simulation Tool:** ModelSim Starter Edition
* **Synthesis & Pin Planning:** Intel Quartus Prime Standard Edition

---

## ⚙️ Working Principle & System Logic

1. **Default State:** The system starts locked (`locked_led = 1`).
2. **Key Input:** The user sets a 4-bit input binary code using the FPGA sliding switches/keypad inputs (`key[3:0]`).
3. **Strobe Signal:** Pulsing `key_strobe` high triggers the internal comparator.
4. **Validation:**
   * **Correct Password (`4'b1010`):** `unlock_led` goes **HIGH**, opening access.
   * **Incorrect Password:** `error_led` goes **HIGH**, and the lock remains engaged (`locked_led = 1`)[cite: 2].

---

## 💻 Verilog Source Code

```verilog
module password_lock(
    input [3:0] key,
    input key_strobe,
    output reg locked_led,
    output reg unlock_led,
    output reg error_led
);

    parameter [3:0] PASSWORD = 4'b1010;

    always @(*) begin
        locked_led = 1;
        unlock_led = 0;
        error_led = 0;

        if (key_strobe) begin
            if (key == PASSWORD) begin
                unlock_led = 1;
                locked_led = 0;
                error_led = 0;
            end else begin
                error_led = 1;
                locked_led = 1;
                unlock_led = 0;
            end
        end
    end

endmodule
