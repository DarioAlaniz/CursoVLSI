v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N -290 -40 -290 10 { lab=vss}
N -210 -40 -210 10 { lab=vdd}
N -140 -40 -140 10 { lab=vin}
N -140 70 -140 120 { lab=vss}
N -210 70 -210 120 { lab=vss}
N -290 70 -290 120 { lab=GND}
N 390 50 390 110 { lab=vss}
N 180 50 180 100 { lab=vss}
N 180 -100 180 -50 { lab=vdd}
N 100 0 140 0 { lab=vin}
N 270 -0 350 -0 { lab=out}
N 390 -100 390 -50 { lab=vdd}
C {inverter/inverter.sym} 200 0 0 0 {name=x1}
C {vsource.sym} -140 40 0 0 {name=V1 value="PULSE(0,\{vin\} 1ps 1ps 1ps 1ns 2ns) DC\{vin\}"}
C {vsource.sym} -210 40 0 0 {name=V2 value=1.8}
C {vsource.sym} -290 40 0 0 {name=V3 value=0}
C {gnd.sym} -290 120 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -290 -40 0 0 {name=l3 sig_type=std_logic lab=vss}
C {lab_pin.sym} -210 -40 0 0 {name=l4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -140 -40 0 0 {name=l5 sig_type=std_logic lab=vin
}
C {lab_pin.sym} -210 120 3 0 {name=l6 sig_type=std_logic lab=vss}
C {lab_pin.sym} -140 120 3 0 {name=l7 sig_type=std_logic lab=vss
}
C {lab_pin.sym} 180 100 3 0 {name=l8 sig_type=std_logic lab=vss
}
C {lab_pin.sym} 180 -100 1 0 {name=l9 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 100 0 0 0 {name=l10 sig_type=std_logic lab=vin}
C {netlist_not_shown.sym} -70 -150 0 0 {name=Simulacion only_toplevel=false 
value="

*Parametros del circuito
.param vin=1.8 
.options TEMP = 27.0 *deafult

*Include
.lib /home/eamta/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/sky130.lib TT

*Signal to Save
.save all 
+ @M.x1.xM1.msky130_fd_pr__nfet_01v8[id] @M.x1.xM1.msky130_fd_pr__nfet_01v8[gm]
+ @M.x1.xM2.msky130_fd_pr__pfet_01v8[id] @M.x1.xM2.msky130_fd_pr__pfet_01v8[gm]

*Simulacion
.control
* let start_WN =0.45
* let stop_WN  =2
* let delta_WN =0.45
* let init_WN  = star_WN
 *loop
* setplot dc
* while init_WN le stop_WN 
*  alter Wn init_WN
*  run 
*  *write dc-sweep.out v(out)
*  set appendwrite
*  dc v1 0 1.8 0.01
  *setplot dc1
*  plot v(out) v(vin)

 tran 0.01n 10ns
 setplot tran1
 plot v(out) v(vin) 
 set filetype = ascii *para guardar en ascii
 write tb_inverter_tran.raw

 reset
 
 dc v1 0 1.8 0.01
 setplot dc1
 plot v(out) v(vin)
 set filetype = ascii
 write tb_inverter_dc.raw

 reset

 op
 set filetype = ascii
 write tb_inverter.raw
 print all

 reset 
 dc v1 0 1.8 0.01
 setplot id
 plot @M.x1.xM1.msky130_fd_pr__nfet_01v8[id]  
 set filetype = ascii
 write tb_inverter_id.raw

.endc


.end
"}
C {lab_pin.sym} 390 110 3 0 {name=l11 sig_type=std_logic lab=vss
}
C {lab_wire.sym} 310 0 0 0 {name=l1 sig_type=std_logic lab=out}
C {inverter/inverter.sym} 410 0 0 0 {name=x2}
C {lab_pin.sym} 390 -100 1 0 {name=l12 sig_type=std_logic lab=vdd}
