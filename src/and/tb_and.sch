v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -370 90 -370 110 { lab=GND}
N -370 -20 -370 30 { lab=vss}
N -300 90 -300 130 { lab=vss}
N -300 -20 -300 30 { lab=vdd}
N -230 90 -230 130 { lab=vss}
N -230 -20 -230 30 { lab=A}
N 100 30 100 90 { lab=vss}
N 100 -120 100 -70 { lab=vdd}
N 260 30 260 80 { lab=vss}
N 260 -120 260 -70 { lab=vdd}
N 350 -20 390 -20 { lab=#net1}
N -370 110 -370 140 { lab=GND}
N 30 -10 50 -10 { lab=A}
N 30 -30 50 -30 { lab=B}
N 10 -10 30 -10 { lab=A}
N 200 -20 220 -20 { lab=out}
N 190 -20 200 -20 { lab=out}
N -230 -110 -230 -70 { lab=vss}
N -230 -220 -230 -170 { lab=B}
N 10 -30 30 -30 { lab=B}
N 50 -30 60 -30 { lab=B}
N 50 -10 60 -10 { lab=A}
N 160 -20 190 -20 { lab=out}
C {gnd.sym} -370 140 0 0 {name=l1 lab=GND}
C {vsource.sym} -370 60 0 0 {name=V1 value=0}
C {lab_pin.sym} -370 -20 2 0 {name=l2 sig_type=std_logic lab=vss}
C {vsource.sym} -300 60 0 0 {name=V2 value=1.8}
C {lab_pin.sym} -300 130 0 0 {name=l3 sig_type=std_logic lab=vss}
C {lab_pin.sym} -300 -20 2 0 {name=l4 sig_type=std_logic lab=vdd}
C {vsource.sym} -230 60 0 0 {name=V3 value="PULSE(0 \{A\} 1ps 1ps 1ps 2ns 4ns) DC\{A\}"}
C {lab_pin.sym} -230 130 0 0 {name=l5 sig_type=std_logic lab=vss}
C {lab_pin.sym} -230 -20 2 0 {name=l6 sig_type=std_logic lab=A}
C {inverter/inverter.sym} 280 -20 0 0 {name=x2}
C {lab_wire.sym} 200 -20 2 0 {name=l9 sig_type=std_logic lab=out}
C {lab_pin.sym} 10 -10 0 0 {name=l11 sig_type=std_logic lab=A}
C {lab_pin.sym} 100 90 0 0 {name=l12 sig_type=std_logic lab=vss
}
C {lab_pin.sym} 100 -120 0 0 {name=l13 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 260 -120 0 0 {name=l14 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 260 80 0 0 {name=l15 sig_type=std_logic lab=vss
}
C {netlist_not_shown.sym} 30 -270 0 0 {name=s1 only_toplevel=false 
value="
*Parametros
.param A=1.8
.param B=1.8
.param wni=0.45
.param wpi=0.9
.param wna=0.9
.param wpa=0.9

.options TEMP = 27.0 

*Include
.lib /home/eamta/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/sky130.lib TT

*Signal to Save
.save all 
+ @M.x1.xM1.msky130_fd_pr__nfet_01v8[id] 
+ @M.x1.xM2.msky130_fd_pr__nfet_01v8[id] 
+ @M.x1.xM3.msky130_fd_pr__nfet_01v8[id] 
+ @M.x1.xM4.msky130_fd_pr__pfet_01v8[id]
+ @M.x1.xM5.msky130_fd_pr__pfet_01v8[id]
+ @M.x1.xM6.msky130_fd_pr__pfet_01v8[id] 
+ @M.x2.xM1.msky130_fd_pr__nfet_01v8[id]
+ @M.x2.xM2.msky130_fd_pr__pfet_01v8[id]  

*Simulacion 
.control
 
 dc v3 0 1.8 0.01 v4 1.8 
 setplot dc
 plot v(out) v(A) 
 *set filetype = ascii 
 *write tb_and_dc.raw
 
 reset
 dc v4 0 1.8 0.01 v3 1.8 
 setplot dc
 plot v(out) v(B)

 reset

 tran 0.01ns 10ns
 setplot transitorio
 plot v(out) v(A) v(B)
 set filetype= ascii
 write tb_and_tran.raw
 
.endc

.end
"}
C {vsource.sym} -230 -140 0 0 {name=V4 value="PULSE(0 \{B\} 1ps 1ps 1ps 1ns 2ns) DC\{B\}"}
C {lab_pin.sym} -230 -70 0 0 {name=l7 sig_type=std_logic lab=vss}
C {lab_pin.sym} -230 -220 2 0 {name=l8 sig_type=std_logic lab=B
}
C {lab_pin.sym} 10 -30 0 0 {name=l10 sig_type=std_logic lab=B}
C {and/and.sym} 120 -10 0 0 {name=x1}
