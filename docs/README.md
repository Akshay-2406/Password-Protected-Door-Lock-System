# 📚 Hardware Specifications & Pin Out Matrix

### Target Hardware
* **Board:** Altera DE2-115 Development Board[cite: 2]
* **FPGA Device:** Cyclone IV EP4CE115F29C7[cite: 2]
* **Software Tools:** Quartus Prime Standard Edition, ModelSim[cite: 2]

### Pin Mapping Table
| Hardware Component | Verilog Port | DE2-115 Pin Location |
| :--- | :--- | :--- |
| Switch `SW[0]` | `key[0]` | `PIN_AB28`[cite: 2] |
| Switch `SW[1]` | `key[1]` | `PIN_AC28`[cite: 2] |
| Switch `SW[2]` | `key[2]` | `PIN_AD27`[cite: 2] |
| Switch `SW[3]` | `key[3]` | `PIN_AB27`[cite: 2] |
| Push Button `KEY[0]` | `key_strobe` | `PIN_AA24`[cite: 2] |
| Green LED `LEDG[0]` | `unlock_led` | `PIN_E22`[cite: 2] |
| Red LED `LEDR[0]` | `error_led` | `PIN_G19`[cite: 2] |
| Red LED `LEDR[1]` | `locked_led` | `PIN_E21`[cite: 2] |
