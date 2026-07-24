🚀 AMBA APB3 Protocol Implementation on Basys 3
📖 Overview

The AMBA APB3 Protocol Implementation is a complete FPGA-based communication system developed on the Basys 3 (Artix-7) FPGA using Verilog HDL. This project recreates the behavior of the ARM AMBA APB3 (Advanced Peripheral Bus), a widely adopted on-chip communication protocol used to connect low-bandwidth peripherals such as UART, SPI, I²C, GPIO, Timers, OLED Displays, and other embedded devices to a processor.

Designed with a modular and scalable architecture, the implementation accurately models the APB3 communication process through the protocol's three standard operating states: IDLE, SETUP, and ACCESS. Each transaction follows the official APB timing sequence, ensuring reliable communication between the APB Master and APB Slave while maintaining protocol compliance.

The controller supports both read and write transactions. During a write operation, the master places the target address and data on the bus before enabling the transfer. For read operations, the slave retrieves data from the selected peripheral and returns it through the read data bus. The design incorporates address decoding, enabling the master to communicate with multiple peripherals using unique address locations. This architecture closely resembles the communication mechanism used in modern ARM-based System-on-Chip (SoC) designs.

To improve reliability, the implementation includes wait-state generation through the PREADY signal, allowing slower peripherals to delay a transaction until they are ready. Additionally, PSLVERR is implemented to detect and report invalid accesses or unsupported operations, demonstrating practical bus error handling.

The entire project is built using independent Verilog modules, making it highly reusable, maintainable, and easy to extend. Components such as the APB Master, APB Slave, Address Decoder, and Peripheral Interface are designed separately, allowing new peripherals to be integrated with minimal modifications.

The design was simulated, synthesized, and implemented using Xilinx Vivado, followed by hardware validation on the Basys 3 FPGA. Functional verification through simulation confirms correct protocol timing, FSM state transitions, read/write operations, peripheral selection, wait-state behavior, and error handling, while hardware testing demonstrates successful real-time execution on the FPGA.

✨ Features
🔗 Complete ARM AMBA APB3 Protocol implementation
⚙️ FSM-based communication with IDLE → SETUP → ACCESS state transitions
📖 Supports both Read and Write transactions
📍 Address decoding for selecting multiple peripherals
📡 Standard APB3 interface signals:
PADDR
PWDATA
PRDATA
PSEL
PENABLE
PWRITE
PREADY
PSLVERR
⏳ Wait-state handling for slow peripherals
🚨 Error detection using PSLVERR
🧩 Modular and reusable Verilog HDL architecture
🧪 Simulation and waveform verification
💻 Hardware implementation on the Basys 3 FPGA
🛠️ Developed using Xilinx Vivado
🏗️ Project Architecture
                  +----------------------+
                  |      APB Master      |
                  +----------+-----------+
                             |
     ---------------------------------------------------------
     |        |         |         |         |                |
   PADDR   PWDATA     PSEL    PENABLE   PWRITE
     |        |         |         |         |
     ---------------- APB BUS ----------------
                             |
                  +----------+-----------+
                  |      APB Slave       |
                  +----------+-----------+
                             |
                    Address Decoder
                             |
          -----------------------------------------
          |            |             |            |
        UART         GPIO         SPI/I²C       OLED
          |            |             |            |
       PRDATA       PREADY       PSLVERR      Outputs
🛠️ Technologies Used
Category	Technology
FPGA Board	Basys 3 (Artix-7)
Hardware Description Language	Verilog HDL
Bus Protocol	ARM AMBA APB3
Development Tool	Xilinx Vivado
Design Methodology	Finite State Machine (FSM)
Verification	Simulation & Hardware Testing
🎯 Learning Outcomes

This project provides practical experience in:

ARM AMBA APB3 bus architecture
FPGA-based communication protocols
Finite State Machine (FSM) design
Address decoding techniques
Read and write transaction handling
Wait-state implementation
Bus error detection and handling
Modular hardware design
Verilog HDL development
FPGA synthesis, implementation, and debugging
Hardware validation on the Basys 3 board
🌟 Why This Project?

Unlike a simple APB controller demonstration, this implementation models the complete APB3 transaction flow—from address decoding and master-slave handshaking to read/write transfers, wait-state support, and error detection. Its modular architecture makes it easy to extend with additional peripherals, making it a strong foundation for future SoC, embedded systems, and FPGA communication projects.

By implementing the AMBA APB3 protocol entirely in hardware, this project demonstrates how modern processors communicate with peripherals through a standardized bus interface. It bridges the gap between digital design fundamentals and real-world embedded system architecture, providing a scalable platform for integrating peripherals such as UART, SPI, I²C, GPIO, timers, and displays into FPGA-based systems.
