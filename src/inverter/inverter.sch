v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 50 -80 50 10 { lab=out}
N 50 -110 140 -110 { lab=vdd}
N 140 -180 140 -110 { lab=vdd}
N 50 -180 140 -180 { lab=vdd}
N -30 -110 10 -110 { lab=in}
N -30 -110 -30 40 { lab=in}
N -30 40 10 40 { lab=in}
N 50 70 50 120 { lab=vss}
N 50 120 160 120 { lab=vss}
N 160 40 160 120 { lab=vss}
N 50 40 160 40 { lab=vss}
N -30 120 50 120 { lab=vss}
N -60 -40 -30 -40 { lab=in}
N 50 -180 50 -140 { lab=vdd}
N -30 -180 50 -180 { lab=vdd}
N 50 -40 140 -40 { lab=out}
C {sky130_fd_pr/nfet_01v8.sym} 30 40 0 0 {name=M1
L=0.15
W=0.45
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
C {sky130_fd_pr/pfet_01v8.sym} 30 -110 0 0 {name=M2
L=0.15
W=0.9
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
C {opin.sym} 140 -40 0 0 {name=p1 lab=out}
C {ipin.sym} -60 -40 0 0 {name=p2 lab=in
}
C {ipin.sym} -30 120 0 0 {name=p3 lab=vss
}
C {ipin.sym} -30 -180 0 0 {name=p4 lab=vdd
}
