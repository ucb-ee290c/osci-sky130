# Osci130

A meta-repo collection of all the stuff in the Skywater 130nm edition of the OsciBear SoC.  

Consists of three main components: 

* [chipyard](./chipyard) contains the Chisel source and VLSI back-end configuration for the digital half of the SoC. (And is also a fork of https://github.com/ucb-bar/chipyard.) 
* [bag-workspace](./bag-workspace) contains the BAG generator code for the Python-generated analog portions of the SoC, plus the OpenAccess views of all other custom-designed portions, including the top integration levels. This is a fork of the starter [Berkeley Wireless Research Center Sky130 BAG Workspace](https://bwrcrepo.eecs.berkeley.edu/swtech130/bag3_skywater130_workspace), which includes both Sky130-tech-specific and BWRC-site-specific setup. 
* [caravel_user_project_analog](./caravel_user_project_analog) is a fork of eFabless's [Caravel (Analog) User-Project Starter](https://github.com/efabless/caravel_user_project_analog). It serves as a delivery area, meeting eFabless's expectations for directory and file layout. Note many of its sub-directories targeted for specific tools (magic, xschem, etc) are left empty or unmodified from the template version. 

A handful of related other files are tracked in this repository's [other](./other) directory. 

## Chip Overview

This chip consists of a CPU and an ADC. The ADC writes data to an 8-bit memory-mapped register, which the CPU reads from.

### Block Diagram
<img src="https://bwrcrepo.eecs.berkeley.edu/swtech130/osci-sky130/-/raw/master/docs/Sky130_Tapeout_BlockDiagram.png" alt="Chip Block Diagram" width="800"/>

## Digital Overview

The digital portion of the chip consists of the following:

* RV32IMAFC core
    * 32-bit, integer, multiply/divide, atomic, floating point, compressed ISA
* 4Kb Instruction cache backed by 16Kb of data memory
* AES accelerator
* Standard peripherals:
    * UART
    * 4 GPIO pins
    * QSPI Flash
    * BootROM
    * CLINT/PLIC (Core-level and Platform-level interupt controllers)

* Debugging capabilities:
    * UART
    * JTAG
    * TSI (Tethered Serial Interface)

* Boot options
    1. TSI/JTAG
    2. QSPI Flash

### VLSI Flow
The digital portion of the chip used Chipyard to generate the RTL of the design, then the Hammer VLSI flow to take the design from RTL to GDSII. The tools used by the flow were Cadence Genus for synthesis, Cadence Innovus for place and route, and Mentor Calibre for DRC/LVS checks.


<img src="https://bwrcrepo.eecs.berkeley.edu/swtech130/osci-sky130/-/raw/master/docs/Hammer_VLSI_Flow.png" alt="Hammer VLSI Flow" width="800"/>


## Chip Layout


<img src="https://bwrcrepo.eecs.berkeley.edu/swtech130/osci-sky130/-/raw/master/docs/Sky130_Chip_Layout.png" alt="Chip Layout" width="700"/>

## Digital Layout
<img src="https://bwrcrepo.eecs.berkeley.edu/swtech130/osci-sky130/-/raw/master/docs/Sky130_Digital_Layout_Highlighted.png" alt="Chip Layout" width="900"/>
