AMBA APB3 Protocol Implementation on Basys 3
Description

The AMBA APB3 Protocol Implementation is an FPGA-based digital design project developed on the Basys 3 (Artix-7) FPGA board using Verilog HDL. The project implements the Advanced Peripheral Bus (APB3) protocol, a part of the ARM AMBA (Advanced Microcontroller Bus Architecture) specification, which is widely used for connecting low-bandwidth peripherals such as UART, GPIO, Timers, SPI, I²C, and OLED displays in System-on-Chip (SoC) designs.

The design models the complete APB3 communication process using a Finite State Machine (FSM) with the three standard protocol states: IDLE, SETUP, and ACCESS. During operation, the APB master initiates a transaction by asserting PSEL, places the address and control information on the bus, and then enables the transfer using PENABLE. The selected APB slave responds with PREADY to indicate the completion of the transaction, while PSLVERR is used to report invalid or unsuccessful transfers.

The implementation supports both read and write operations. For write transactions, the master transfers data through the PWDATA bus, while for read transactions the slave returns data on the PRDATA bus. The design also includes address decoding, allowing different peripherals to be selected based on the address provided by the APB master. This makes the architecture scalable and suitable for integrating multiple peripherals into a single FPGA-based embedded system.

The project was designed using a modular architecture, where each functional block—including the APB master, APB slave, address decoder, and peripheral interface—is implemented as an independent Verilog module. This modular approach improves readability, simplifies debugging, and enables future expansion by adding new APB-compatible peripherals.

The entire system was designed, simulated, synthesized, and implemented using Xilinx Vivado. Functional verification was performed through simulation and waveform analysis to validate protocol timing, FSM state transitions, read/write operations, wait-state handling, and error detection before deploying the design to the Basys 3 FPGA for hardware verification.

✨ Key Features
🔗 Complete AMBA APB3 protocol implementation
⚙️ FSM-based IDLE → SETUP → ACCESS state transitions
📖 Supports both Read and Write transactions
📍 Address decoding for peripheral selection
📡 Standard APB3 signals (PSEL, PENABLE, PREADY, PWRITE, PADDR, PWDATA, PRDATA, PSLVERR)
🚨 Error handling using PSLVERR
⏳ Wait-state support using PREADY
🧩 Modular Verilog HDL design for easy scalability
🧪 Functional simulation and waveform verification
💻 Hardware implementation on the Basys 3 FPGA
🛠️ Developed using Xilinx Vivado
🛠️ Technologies Used
FPGA Board: Basys 3 (Artix-7)
HDL: Verilog HDL
Protocol: ARM AMBA APB3
Design Tool: Xilinx Vivado
Design Methodology: Finite State Machine (FSM)
Verification: Simulation and Hardware Testing
🎯 Learning Outcomes

This project provides hands-on experience with:

AMBA APB3 bus architecture
Bus protocol implementation on FPGA
Finite State Machine (FSM) design
Address decoding techniques
Read and write transaction handling
Peripheral interfacing
Verilog HDL development
FPGA synthesis, implementation, and debugging using Vivado
Hardware verification on the Basys 3 board

This project demonstrates a complete FPGA implementation of the AMBA APB3 protocol, providing a scalable foundation for building SoC-style embedded systems where multiple peripherals communicate through a standardized bus interface. It serves as an excellent stepping stone toward implementing more advanced AMBA protocols such as AHB and AXI.
