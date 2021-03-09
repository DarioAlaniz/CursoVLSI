loading history file ... 0 events added
Running NetGen Console Functions
Netgen 1.5.167 compiled on jue feb 18 16:13:11 -03 2021
Warning: netgen command 'format' use fully-qualified name '::netgen::format'
Warning: netgen command 'global' use fully-qualified name '::netgen::global'
Reading netlist file ../../sch/nand/nand.spice
Call to undefined subcircuit sky130_fd_pr__nfet_01v8
Creating placeholder cell definition.
Call to undefined subcircuit sky130_fd_pr__pfet_01v8
Creating placeholder cell definition.
Reading netlist file nand.spice
Call to undefined subcircuit sky130_fd_pr__nfet_01v8
Creating placeholder cell definition.
Call to undefined subcircuit sky130_fd_pr__pfet_01v8
Creating placeholder cell definition.
Reading setup file ../../../skywater/open_pdks/sky130/netgen/sky130_setup.tcl
Model sky130_fd_pr__nfet_01v8 pin 1 == 3
Model sky130_fd_pr__nfet_01v8 pin 1 == 3
No property mult found for device sky130_fd_pr__nfet_01v8
No property sa found for device sky130_fd_pr__nfet_01v8
No property sb found for device sky130_fd_pr__nfet_01v8
No property sd found for device sky130_fd_pr__nfet_01v8
No property nf found for device sky130_fd_pr__nfet_01v8
No property nrd found for device sky130_fd_pr__nfet_01v8
No property nrs found for device sky130_fd_pr__nfet_01v8
Model sky130_fd_pr__pfet_01v8 pin 1 == 3
Model sky130_fd_pr__pfet_01v8 pin 1 == 3
No property mult found for device sky130_fd_pr__pfet_01v8
No property sa found for device sky130_fd_pr__pfet_01v8
No property sb found for device sky130_fd_pr__pfet_01v8
No property sd found for device sky130_fd_pr__pfet_01v8
No property nf found for device sky130_fd_pr__pfet_01v8
No property nrd found for device sky130_fd_pr__pfet_01v8
No property nrs found for device sky130_fd_pr__pfet_01v8
Comparison output logged to file comp.out
Logging to file "comp.out" enabled
Contents of circuit 1:  Circuit: 'sky130_fd_pr__nfet_01v8'
Circuit sky130_fd_pr__nfet_01v8 contains 0 device instances.
Circuit contains 0 nets.
Contents of circuit 2:  Circuit: 'sky130_fd_pr__nfet_01v8'
Circuit sky130_fd_pr__nfet_01v8 contains 0 device instances.
Circuit contains 0 nets.

Circuit sky130_fd_pr__nfet_01v8 contains no devices.
Contents of circuit 1:  Circuit: 'sky130_fd_pr__pfet_01v8'
Circuit sky130_fd_pr__pfet_01v8 contains 0 device instances.
Circuit contains 0 nets.
Contents of circuit 2:  Circuit: 'sky130_fd_pr__pfet_01v8'
Circuit sky130_fd_pr__pfet_01v8 contains 0 device instances.
Circuit contains 0 nets.

Circuit sky130_fd_pr__pfet_01v8 contains no devices.
Contents of circuit 1:  Circuit: '../../sch/nand/nand.spice'
Circuit ../../sch/nand/nand.spice contains 4 device instances.
  Class: sky130_fd_pr__nfet_01v8 instances:   2
  Class: sky130_fd_pr__pfet_01v8 instances:   2
Circuit contains 6 nets.
Contents of circuit 2:  Circuit: 'nand.spice'
Circuit nand.spice contains 4 device instances.
  Class: sky130_fd_pr__nfet_01v8 instances:   2
  Class: sky130_fd_pr__pfet_01v8 instances:   2
Circuit contains 6 nets.

Circuit 1 contains 4 devices, Circuit 2 contains 4 devices.
Circuit 1 contains 6 nets,    Circuit 2 contains 6 nets.

Netlists match uniquely.
Result: Circuits match uniquely.
Logging to file "comp.out" disabled
LVS Done.
Main console display active (Tcl8.6.8 / Tk8.6.8)
(nand) 1 % 