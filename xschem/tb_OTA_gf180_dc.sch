v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench to characterize DC OP} 130 -530 0 0 0.4 0.4 {}
T {Key Specifications
DC Open Loop Gain = 88dB
Unity Gain Bandwidth = 52MHz
Phase Margin = 60Deg} 390 100 0 0 0.4 0.4 {}
N 0 -410 0 -370 {lab=vdd}
N 230 -190 230 -150 {lab=vss}
N 70 -130 70 -100 {lab=vip}
N 0 -470 0 -410 {lab=vdd}
N 140 -240 180 -240 {lab=vip}
N 70 -210 70 -120 {lab=vip}
N 250 -450 250 -370 {lab=vdd}
N 150 -220 180 -220 {lab=vout}
N 250 -310 250 -260 {lab=#net1}
N 70 -240 140 -240 {lab=vip}
N 70 -240 70 -210 {lab=vip}
N 140 20 150 20 {lab=vout}
N 140 -220 140 20 {lab=vout}
N 140 -220 170 -220 {lab=vout}
N 300 -230 370 -230 {lab=vout}
N 370 -230 560 -230 {lab=vout}
N 560 -230 560 -190 {lab=vout}
N 230 -410 230 -270 {lab=vdd}
N 230 -410 250 -410 {lab=vdd}
N 90 -420 90 -380 {lab=vss}
N 400 -230 400 20 {lab=vout}
N 140 20 400 20 {lab=vout}
C {vsource.sym} 0 -340 0 0 {name=vdd value=5 savecurrent=false}
C {gnd.sym} 0 -310 0 0 {name=l6 lab=GND}
C {vsource.sym} 90 -350 0 0 {name=vd1 value=0 savecurrent=false}
C {gnd.sym} 90 -320 0 0 {name=l1 lab=GND}
C {vsource.sym} 70 -70 0 0 {name=vd2 value="DC=2.5 " savecurrent=false}
C {gnd.sym} 70 -40 0 0 {name=l2 lab=GND}
C {capa.sym} 560 -160 0 0 {name=C1
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 560 -130 0 0 {name=l3 lab=GND}
C {isource.sym} 250 -340 0 0 {name=I0 value=5u}
C {devices/code_shown.sym} -610 -500 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
.lib $::180MCU_MODELS/sm141064.ngspice cap_mim
.lib $::180MCU_MODELS/sm141064.ngspice res_typical
.lib $::180MCU_MODELS/sm141064.ngspice moscap_typical
.lib $::180MCU_MODELS/sm141064.ngspice mimcap_typical
"
}
C {launcher.sym} 850 -270 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_nmos_gf180.raw tran"
}
C {devices/launcher.sym} 850 -220 0 0 {name=h3
descr="annotate OP" 
tclcommand="xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw; set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 855 -165 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {lab_wire.sym} 0 -470 2 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 230 -170 2 0 {name=p4 sig_type=std_logic lab=vss}
C {lab_wire.sym} 70 -210 0 0 {name=p5 sig_type=std_logic lab=vip}
C {lab_wire.sym} 250 -450 1 0 {name=p6 sig_type=std_logic lab=vdd}
C {devices/title.sym} -110 270 0 0 {name=l5 author="GlobalFoundries PDK VSP"}
C {devices/code_shown.sym} -620 -330 0 0 {name=NGSPICE1 only_toplevel=true
value="
.param temp=27
.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

* Operating Point Analysis
op
remzerovec
write tb_OTA_gf180_dc.raw

.endc
"}
C {/foss/designs/Amplifier-Design/single_ended_opamp/xschem/BUFFER_OTA_1.sym} 250 -230 0 0 {name=x1}
C {lab_wire.sym} 90 -420 2 0 {name=p1 sig_type=std_logic lab=vss}
C {lab_wire.sym} 560 -230 2 0 {name=p2 sig_type=std_logic lab=vout}
