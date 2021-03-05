v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 200 0 200 30 { lab=#net1}
N 140 0 200 -0 { lab=#net1}
N 140 -40 140 0 { lab=#net1}
N 200 0 260 -0 { lab=#net1}
N 260 -40 260 -0 { lab=#net1}
N 200 90 200 130 { lab=#net2}
N 200 190 200 230 { lab=vss}
N 100 160 160 160 { lab=A}
N 260 -160 260 -100 { lab=vdd}
N 20 -160 260 -160 { lab=vdd}
N 140 -160 140 -100 { lab=vdd}
N 20 230 200 230 { lab=vss}
N 260 -160 420 -160 { lab=vdd}
N 420 120 420 230 { lab=vss}
N 200 230 420 230 { lab=vss}
N 360 -70 380 -70 { lab=#net1}
N 360 90 380 90 { lab=#net1}
N 260 0 360 0 { lab=#net1}
N 420 0 520 0 { lab=out}
N 190 -70 220 -70 { lab=A}
N 140 -70 160 -70 { lab=vdd}
N 160 -160 160 -70 { lab=vdd}
N 260 -70 280 -70 { lab=vdd}
N 280 -160 280 -70 { lab=vdd}
N 460 -160 460 -70 { lab=vdd}
N 420 -160 460 -160 { lab=vdd}
N 420 90 460 90 { lab=vss}
N 460 90 460 230 { lab=vss}
N 420 230 460 230 { lab=vss}
N 200 160 230 160 { lab=vss}
N 230 160 230 230 { lab=vss}
N 200 60 230 60 { lab=vss}
N 230 60 230 160 { lab=vss}
N -50 -10 -30 -10 { lab=B}
N -50 60 -30 60 { lab=A}
N 420 -70 460 -70 { lab=vdd}
N 420 -160 420 -100 { lab=vdd}
N 420 -40 420 60 { lab=out}
N 360 -70 360 90 { lab=#net1}
N 60 -70 100 -70 { lab=B}
N 60 60 160 60 { lab=B}
C {sky130_fd_pr/nfet_01v8.sym} 180 160 0 0 {name=M1
L=0.15
W=\{wna\}
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
C {sky130_fd_pr/pfet_01v8.sym} 120 -70 0 0 {name=M2
L=0.15
W=\{wpa\}
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
C {sky130_fd_pr/nfet_01v8.sym} 180 60 0 0 {name=M3
L=0.15
W=\{wna\}
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
C {sky130_fd_pr/pfet_01v8.sym} 240 -70 0 0 {name=M4
L=0.15
W=\{wpa\}
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
C {ipin.sym} 20 -160 0 0 {name=p1 lab=vdd}
C {ipin.sym} 20 230 0 0 {name=p2 lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 400 90 0 0 {name=M5
L=0.15
W=\{wni\}
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
C {sky130_fd_pr/pfet_01v8.sym} 400 -70 0 0 {name=M6
L=0.15
W=\{wpi\}
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
C {opin.sym} 520 0 0 0 {name=p3 lab=out}
C {lab_pin.sym} 100 160 0 0 {name=l1 sig_type=std_logic lab=A}
C {lab_pin.sym} 190 -70 0 0 {name=l4 sig_type=std_logic lab=A}
C {ipin.sym} -50 -10 0 0 {name=p4 lab=B}
C {ipin.sym} -50 60 0 0 {name=p5 lab=A
}
C {lab_pin.sym} -30 60 2 0 {name=l6 sig_type=std_logic lab=A}
C {lab_pin.sym} -30 -10 2 0 {name=l2 sig_type=std_logic lab=B}
C {lab_pin.sym} 60 60 0 0 {name=l3 sig_type=std_logic lab=B}
C {lab_pin.sym} 60 -70 0 0 {name=l5 sig_type=std_logic lab=B}
