v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 110 30 110 80 { lab=#net1}
N 110 140 110 170 { lab=vss}
N -80 170 110 170 { lab=vss}
N 110 110 150 110 { lab=vss}
N 150 110 150 170 { lab=vss}
N 110 170 150 170 { lab=vss}
N 110 -70 110 -30 { lab=out}
N 40 -70 110 -70 { lab=out}
N 40 -150 40 -70 { lab=out}
N 180 -150 180 -70 { lab=out}
N 110 -70 180 -70 { lab=out}
N 180 -270 180 -210 { lab=vdd}
N -80 -270 180 -270 { lab=vdd}
N 40 -270 40 -210 { lab=vdd}
N 40 -180 90 -180 { lab=vdd}
N 90 -270 90 -180 { lab=vdd}
N 180 -180 220 -180 { lab=vdd}
N 220 -270 220 -180 { lab=vdd}
N 180 -270 220 -270 { lab=vdd}
N 180 -70 280 -70 { lab=out}
N 30 0 70 0 { lab=B}
N 30 110 70 110 { lab=A}
N -40 -180 -0 -180 { lab=B}
N -100 -90 -80 -90 { lab=B}
N -100 -40 -80 -40 { lab=A}
N 120 -180 140 -180 { lab=A}
N 110 0 150 0 { lab=vss}
N 150 0 150 110 { lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 90 0 0 0 {name=M1
L=0.15
W=\{wn\}
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 20 -180 0 0 {name=M2
L=0.15
W=\{wp\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 90 110 0 0 {name=M3
L=0.15
W=\{wn\}
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 160 -180 0 0 {name=M4
L=0.15
W=\{wp\}
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} -100 -90 0 0 {name=p1 lab=B
}
C {ipin.sym} -100 -40 0 0 {name=p2 lab=A
}
C {ipin.sym} -80 170 0 0 {name=p3 lab=vss
}
C {ipin.sym} -80 -270 0 0 {name=p4 lab=vdd
}
C {opin.sym} 280 -70 0 0 {name=p5 lab=out
}
C {lab_pin.sym} 30 0 0 0 {name=l1 sig_type=std_logic lab=B
}
C {lab_pin.sym} 30 110 0 0 {name=l2 sig_type=std_logic lab=A
}
C {lab_pin.sym} -40 -180 0 0 {name=l3 sig_type=std_logic lab=B
}
C {lab_pin.sym} 120 -180 0 0 {name=l4 sig_type=std_logic lab=A
}
C {lab_pin.sym} -80 -90 2 0 {name=l5 sig_type=std_logic lab=B
}
C {lab_pin.sym} -80 -40 2 0 {name=l6 sig_type=std_logic lab=A
}
