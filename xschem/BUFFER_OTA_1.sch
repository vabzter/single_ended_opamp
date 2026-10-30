v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Key Specs TYP Corner
Gain = 83dB
UGB = 52MHz
PM = 61Deg
DC error = 2mV
Settling time ~30ns no ringing observed
Total current consumption = 435uA} -80 -310 0 0 0.2 0.2 {}
T {70uA} 350 190 0 0 0.2 0.2 {}
T {360uA} 750 190 0 0 0.2 0.2 {}
T {5uA} 0 190 0 0 0.2 0.2 {}
N 220 90 290 90 {lab=ibias_n_5u}
N 10 120 10 180 {lab=VSS}
N 210 180 360 180 {lab=VSS}
N 360 120 360 180 {lab=VSS}
N 10 -50 10 60 {lab=ibias_n_5u}
N 10 10 60 10 {lab=ibias_n_5u}
N 60 10 60 90 {lab=ibias_n_5u}
N 250 -50 250 -10 {lab=vn2}
N 250 -10 460 -10 {lab=vn2}
N 460 -50 460 -10 {lab=vn2}
N 290 90 320 90 {lab=ibias_n_5u}
N 180 180 230 180 {lab=VSS}
N 50 90 220 90 {lab=ibias_n_5u}
N 10 180 180 180 {lab=VSS}
N 290 -250 420 -250 {lab=vn1}
N 350 -250 350 -190 {lab=vn1}
N 250 -190 350 -190 {lab=vn1}
N 460 -370 460 -280 {lab=VDD}
N 250 -370 460 -370 {lab=VDD}
N 250 -370 250 -280 {lab=VDD}
N 220 -250 250 -250 {lab=VDD}
N 220 -310 220 -250 {lab=VDD}
N 220 -310 250 -310 {lab=VDD}
N 460 -250 490 -250 {lab=VDD}
N 490 -310 490 -250 {lab=VDD}
N 460 -310 490 -310 {lab=VDD}
N 760 -370 760 -280 {lab=VDD}
N 760 -250 790 -250 {lab=VDD}
N 790 -310 790 -250 {lab=VDD}
N 760 -310 790 -310 {lab=VDD}
N 460 -370 760 -370 {lab=VDD}
N 460 -190 590 -190 {lab=vx}
N 590 -250 720 -250 {lab=vx}
N 760 120 760 170 {lab=VSS}
N 760 170 760 180 {lab=VSS}
N 360 180 760 180 {lab=VSS}
N 630 90 720 90 {lab=ibias_n_5u}
N 500 -80 570 -80 {lab=vip}
N 140 -80 210 -80 {lab=vin}
N 250 -80 270 -80 {lab=vn2}
N 270 -80 270 -10 {lab=vn2}
N 440 -80 460 -80 {lab=vn2}
N 440 -80 440 -10 {lab=vn2}
N 760 90 800 90 {lab=VSS}
N 800 90 800 150 {lab=VSS}
N 760 150 800 150 {lab=VSS}
N 360 90 410 90 {lab=VSS}
N 410 90 410 160 {lab=VSS}
N 360 160 410 160 {lab=VSS}
N -40 90 10 90 {lab=VSS}
N -40 90 -40 160 {lab=VSS}
N -40 160 10 160 {lab=VSS}
N 760 -70 860 -70 {lab=vout}
N 760 -220 760 -190 {lab=vout}
N 760 30 760 60 {lab=vout}
N 460 -220 460 -190 {lab=vx}
N 590 -250 590 -190 {lab=vx}
N 460 -130 460 -110 {lab=vx}
N 250 -130 250 -110 {lab=vn1}
N 250 -220 250 -190 {lab=vn1}
N 360 -10 360 0 {lab=vn2}
N 250 -190 250 -130 {lab=vn1}
N 460 -190 460 -130 {lab=vx}
N 760 -190 760 -130 {lab=vout}
N 360 -0 360 60 {lab=vn2}
N 140 -80 210 -80 {lab=vin}
N 760 -130 760 40 {lab=vout}
N 740 -170 760 -170 {lab=vout}
N 710 -150 710 -120 {lab=vss}
N 590 -190 590 -170 {lab=vx}
N 590 -170 610 -170 {lab=vx}
N 670 -170 680 -170 {lab=#net1}
C {devices/title.sym} -10 290 0 0 {name=l5 author="GlobalFoundries PDK VSP"}
C {symbols/nfet_05v0.sym} 340 90 0 0 {name=M1
L=2u
W=3u
nf=1
m=16
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/nfet_05v0.sym} 30 90 0 1 {name=M2
L=2u
W=3u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/nfet_05v0.sym} 230 -80 0 0 {name=M3
L=2u
W=30u
nf=6
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/nfet_05v0.sym} 480 -80 0 1 {name=M4
L=2u
W=30u
nf=6
m=3
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} 440 -250 0 0 {name=M5
L=2u
W=30u
nf=3
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} 270 -250 0 1 {name=M6
L=2u
W=30u
nf=3
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {symbols/pfet_05v0.sym} 740 -250 0 0 {name=M8
L=2u
W=30u
nf=6
m=8
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {symbols/nfet_05v0.sym} 740 90 0 0 {name=M10
L=2u
W=3u
nf=1
m=80
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {iopin.sym} 530 -370 0 0 {name=p1 lab=VDD}
C {iopin.sym} 470 180 0 0 {name=p2 lab=VSS
}
C {ipin.sym} 570 -80 2 0 {name=p4 lab=vip}
C {ipin.sym} 10 -50 1 0 {name=p5 lab=ibias_n_5u}
C {devices/lab_pin.sym} 370 -250 1 0 {name=l2 sig_type=std_logic lab=vn1}
C {devices/lab_pin.sym} 460 -200 2 0 {name=l1 sig_type=std_logic lab=vx}
C {devices/lab_pin.sym} 630 90 0 0 {name=l3 sig_type=std_logic lab=ibias_n_5u}
C {opin.sym} 860 -70 0 0 {name=p6 lab=vout}
C {devices/lab_pin.sym} 320 -10 3 0 {name=l4 sig_type=std_logic lab=vn2}
C {devices/ngspice_get_value.sym} 210 -100 0 1 {name="r4" node=@m.xm3.m0[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 220 -20 0 1 {name=r2 node=v(@m.xm3.m0[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 220 10 0 1 {name=r3 node=v(@m.xm3.m0[vdsat])
descr="vdsat="}
C {devices/ngspice_get_value.sym} 210 -140 0 1 {name=r5 node=@m.xm3.m0[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 150 -30 0 1 {name=r6 node=v(@m.xm3.m0[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 150 0 0 1 {name=r7 node=v(@m.xm3.m0[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 540 -90 0 1 {name=r1 node=@m.xm4.m0[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 540 -130 0 1 {name=r8 node=@m.xm4.m0[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 590 -30 0 1 {name=r9 node=v(@m.xm4.m0[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 590 0 0 1 {name=r10 node=v(@m.xm4.m0[vdsat])
descr="vdsat="}
C {devices/ngspice_get_value.sym} 520 -40 0 1 {name=r11 node=v(@m.xm4.m0[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 520 -10 0 1 {name=r12 node=v(@m.xm4.m0[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 320 130 0 1 {name=r13 node=v(@m.xm1.m0[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 340 170 0 1 {name=r14 node=v(@m.xm1.m0[vdsat])
descr="vdsat="}
C {devices/ngspice_get_value.sym} 270 130 0 1 {name=r15 node=v(@m.xm1.m0[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 270 160 0 1 {name=r16 node=v(@m.xm1.m0[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 300 90 0 1 {name=r17 node=@m.xm1.m0[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 300 50 0 1 {name=r18 node=@m.xm1.m0[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 700 80 0 1 {name=r19 node=@m.xm10.m0[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 700 40 0 1 {name=r20 node=@m.xm10.m0[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 740 140 0 1 {name=r21 node=v(@m.xm10.m0[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 740 170 0 1 {name=r22 node=v(@m.xm10.m0[vdsat])
descr="vdsat="}
C {devices/ngspice_get_value.sym} 670 130 0 1 {name=r23 node=v(@m.xm10.m0[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 670 160 0 1 {name=r24 node=v(@m.xm10.m0[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 440 -290 0 1 {name=r25 node=@m.xm5.m0[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 440 -330 0 1 {name=r26 node=@m.xm5.m0[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 560 -330 0 1 {name=r27 node=v(@m.xm5.m0[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 570 -300 0 1 {name=r28 node=v(@m.xm5.m0[vdsat])
descr="vdsat="}
C {devices/ngspice_get_value.sym} 510 -330 0 1 {name=r29 node=v(@m.xm5.m0[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 510 -300 0 1 {name=r30 node=v(@m.xm3.m0[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 860 -280 0 1 {name=r31 node=@m.xm8.m0[gm]
descr="gm="}
C {devices/ngspice_get_value.sym} 700 -300 0 1 {name=r32 node=@m.xm8.m0[gds]
descr="gds="}
C {devices/ngspice_get_value.sym} 930 -240 0 1 {name=r33 node=v(@m.xm8.m0[vth])
descr="vth="}
C {devices/ngspice_get_value.sym} 930 -200 0 1 {name=r34 node=v(@m.xm8.m0[vdsat])
descr="vdsat="}
C {devices/ngspice_get_value.sym} 860 -240 0 1 {name=r35 node=v(@m.xm8.m0[vds])
descr="vds="}
C {devices/ngspice_get_value.sym} 870 -190 0 1 {name=r36 node=v(@m.xm8.m0[vgs])
descr="vgs="}
C {ipin.sym} 140 -80 0 0 {name=p3 lab=vin}
C {devices/ngspice_get_value.sym} 820 -190 0 1 {name=r37 node=v(@m.xm8.m0[vdsat])
descr="vdsat="}
C {symbols/cap_mim_2f0fF.sym} 640 -170 1 0 {name=C4
W=1e-6
L=1e-6
model=cap_mim_2f0fF
spiceprefix=X
m=500}
C {symbols/ppolyf_u_1k.sym} 710 -170 3 0 {name=R39
W=1e-6
L=3e-6
model=ppolyf_u_1k
spiceprefix=X
m=1}
C {devices/lab_pin.sym} 710 -130 2 0 {name=l12 sig_type=std_logic lab=vss}
