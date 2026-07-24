🚀 AMBA APB3 Protocol Implementation on Basys 3
📖 Overview

The AMBA APB3 Protocol Implementation is an FPGA-based communication project developed on the Basys 3 (Artix-7) FPGA using Verilog HDL and Xilinx Vivado. This project implements the Advanced Peripheral Bus (APB3), a part of the ARM Advanced Microcontroller Bus Architecture (AMBA) specification, which is widely used in modern System-on-Chip (SoC) designs for connecting low-bandwidth peripherals such as UART, GPIO, SPI, I²C, Timers, PWM controllers, and OLED displays.

The design accurately models the APB3 communication protocol using a Finite State Machine (FSM) consisting of three standard states: IDLE, SETUP, and ACCESS. Every transaction follows the official APB3 timing sequence, ensuring reliable communication between the APB Master and APB Slave.

During a write operation, the master places the target address on the PADDR bus, transfers data through PWDATA, and asserts PWRITE to indicate a write transaction. During a read operation, the slave retrieves the requested data and returns it through the PRDATA bus. Communication between the master and slave is synchronized using PSEL, PENABLE, and PREADY, while PSLVERR provides error reporting for invalid or unsupported transactions.

The project also implements address decoding, allowing multiple peripherals to be connected to the same APB bus. Based on the address provided by the master, the appropriate peripheral is selected while all others remain inactive. This modular architecture makes the design highly scalable and allows new peripherals to be integrated with minimal changes.

To emulate real hardware behavior, the design supports wait-state generation through the PREADY signal. If a peripheral requires additional time to complete a transaction, the master remains in the ACCESS state until the slave asserts PREADY. Error handling is implemented using PSLVERR, enabling the system to detect invalid addresses or unsuccessful transfers.

The entire project is designed using modular Verilog HDL, where each component—including the APB Master, APB Slave, Address Decoder, and Peripheral Interface—is implemented as an independent module. This approach improves readability, simplifies debugging, and makes the system easier to maintain and extend.

The design was thoroughly simulated, synthesized, and implemented using Xilinx Vivado. Functional verification was performed using simulation waveforms to validate protocol timing, state transitions, read/write operations, peripheral selection, wait-state handling, and error detection. Finally, the design was programmed onto the Basys 3 FPGA, where the protocol operation was successfully verified in real hardware.

✨ Features
Complete implementation of the ARM AMBA APB3 protocol
Finite State Machine (FSM)-based protocol control
Standard APB3 states: IDLE, SETUP, and ACCESS
Supports both Read and Write transactions
Address decoding for peripheral selection
Standard APB3 interface signals:
PADDR
PWDATA
PRDATA
PSEL
PENABLE
PWRITE
PREADY
PSLVERR
Wait-state support using PREADY
Error detection using PSLVERR
Modular and reusable Verilog HDL design
Simulation and waveform verification
Hardware implementation on the Basys 3 FPGA
Developed using Xilinx Vivado
🛠️ Technologies Used
FPGA Board: Basys 3 (Artix-7)
Hardware Description Language: Verilog HDL
Bus Protocol: ARM AMBA APB3
Development Tool: Xilinx Vivado
Design Methodology: Finite State Machine (FSM)
Verification: Simulation and Hardware Testing
🎯 Learning Outcomes

This project provides practical experience in:

AMBA APB3 bus architecture
FPGA-based communication protocols
Finite State Machine (FSM) design
Address decoding techniques
Read and write transaction handling
Wait-state implementation
Bus error detection and handling
Modular hardware design
Verilog HDL development
FPGA synthesis and implementation
Hardware debugging and verification
Embedded system communication
🌟 Project Highlights
Implements the complete APB3 transaction flow from IDLE → SETUP → ACCESS.
Demonstrates real-time communication between an APB Master and APB Slave.
Supports peripheral selection through address decoding, making it suitable for integrating devices such as UART, SPI, I²C, GPIO, timers, and OLED displays.
Includes protocol-compliant handshaking, wait-state generation, and error detection for reliable data transfers.
Built with a modular architecture, allowing future expansion with additional APB-compatible peripherals.
Successfully verified through simulation and hardware implementation on the Basys 3 FPGA.

This project demonstrates a complete hardware implementation of the ARM AMBA APB3 protocol on an FPGA, providing a strong foundation for designing scalable embedded systems and serving as a stepping stone toward advanced AMBA protocols such as AHB and AXI.
