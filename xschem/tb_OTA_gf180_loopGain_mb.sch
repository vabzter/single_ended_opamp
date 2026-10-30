v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
T {Testbench to characterize Loop Gain using Midlebrook's Theorem} 490 -450 0 0 0.4 0.4 {}
T {Key Specifications
DC Open Loop Gain = 88dB
Unity Gain Bandwidth = 52MHz
Phase Margin = 60Deg} 750 180 0 0 0.4 0.4 {}
N 360 -330 360 -290 {lab=vdd}
N 590 -110 590 -70 {lab=vss}
N 430 -50 430 -20 {lab=vip}
N 360 -390 360 -330 {lab=vdd}
N 500 -160 540 -160 {lab=vip}
N 430 -130 430 -40 {lab=vip}
N 610 -370 610 -290 {lab=vdd}
N 510 -140 540 -140 {lab=vf1}
N 610 -230 610 -180 {lab=#net1}
N 430 -160 500 -160 {lab=vip}
N 430 -160 430 -130 {lab=vip}
N 1230 -120 1230 -80 {lab=vss}
N 1440 -160 1560 -160 {lab=#net2}
N 1560 -160 1560 -120 {lab=#net2}
N 1140 -170 1180 -170 {lab=vip}
N 1250 -380 1250 -300 {lab=vdd}
N 1150 -150 1180 -150 {lab=#net3}
N 1250 -240 1250 -190 {lab=#net4}
N 1070 -170 1140 -170 {lab=vip}
N 1070 -170 1070 -140 {lab=vip}
N 510 100 590 100 {lab=vf1}
N 500 100 510 100 {lab=vf1}
N 500 -140 500 100 {lab=vf1}
N 500 -140 530 -140 {lab=vf1}
N 650 100 710 100 {lab=vr1}
N 660 -150 730 -150 {lab=vr1}
N 730 -150 730 100 {lab=vr1}
N 690 100 730 100 {lab=vr1}
N 730 -150 920 -150 {lab=vr1}
N 920 -150 920 -110 {lab=vr1}
N 1280 70 1300 70 {
lab=#net5}
N 1280 70 1280 110 {lab=#net5}
N 1260 70 1280 70 {
lab=#net5}
N 1160 70 1200 70 {lab=#net3}
N 1280 170 1280 190 {lab=GND}
N 1300 -160 1380 -160 {lab=#net2}
N 1380 -160 1380 60 {lab=#net2}
N 1380 60 1380 70 {lab=#net2}
N 1350 70 1380 70 {lab=#net2}
N 1130 70 1160 70 {lab=#net3}
N 1130 -150 1130 70 {lab=#net3}
N 1130 -150 1160 -150 {lab=#net3}
N 1380 -160 1440 -160 {lab=#net2}
N 590 -330 590 -190 {lab=vdd}
N 590 -330 610 -330 {lab=vdd}
N 1230 -340 1230 -200 {lab=vdd}
N 1230 -340 1250 -340 {lab=vdd}
N 450 -340 450 -300 {lab=vss}
C {vsource.sym} 360 -260 0 0 {name=vdd value=5 savecurrent=false}
C {gnd.sym} 360 -230 0 0 {name=l6 lab=GND}
C {vsource.sym} 450 -270 0 0 {name=vd1 value=0 savecurrent=false}
C {gnd.sym} 450 -240 0 0 {name=l1 lab=GND}
C {vsource.sym} 430 10 0 0 {name=vd2 value="DC=2.5 " savecurrent=false}
C {gnd.sym} 430 40 0 0 {name=l2 lab=GND}
C {capa.sym} 920 -80 0 0 {name=C1
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 920 -50 0 0 {name=l3 lab=GND}
C {isource.sym} 610 -260 0 0 {name=I0 value=5u}
C {devices/code_shown.sym} -250 -420 0 0 {name=MODELS only_toplevel=true
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
C {launcher.sym} 1240 290 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_nmos_gf180.raw tran"
}
C {devices/launcher.sym} 1240 340 0 0 {name=h3
descr="annotate OP" 
tclcommand="xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw; set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 1245 395 0 0 {name=h1
descr="Click left mouse button here with control key
pressed to load/unload waveforms in graph."
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {lab_wire.sym} 360 -390 2 0 {name=p3 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 590 -90 2 0 {name=p4 sig_type=std_logic lab=vss}
C {lab_wire.sym} 430 -130 0 0 {name=p5 sig_type=std_logic lab=vip}
C {lab_wire.sym} 610 -370 1 0 {name=p6 sig_type=std_logic lab=vdd}
C {devices/title.sym} 610 520 0 0 {name=l5 author="GlobalFoundries PDK VSP"}
C {devices/code_shown.sym} -260 -250 0 0 {name=NGSPICE1 only_toplevel=true
value="
.param temp=27
.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

* Operating Point Analysis
op
remzerovec
write tb_OTA_gf180_loogGain_mb.raw
set appendwrite

* AC Analysis
ac dec 101 1 100G
remzerovec
write tb_OTA_gf180_loogGain_mb.raw
set appendwrite

* Middlebrook's Method
let tv=-v(vr1)/v(vf1)
let ti=-i(vir1)/i(vif1)
let tmb=(tv*ti - 1)/(tv + ti + 2)

let gain_db = db(tmb)
let phase_unwrapped = 180/pi*cphase(tmb)

plot gain_dB ylabel 'Magnitude '
plot phase_unwrapped ylabel 'Phase '

meas ac A0_db find gain_db at=10
meas ac UGB when gain_db=0 fall=1
meas ac PHASE_UGB find phase_unwrapped at=$&UGB


let PM = 180 + PHASE_UGB

print A0_db UGB PHASE_UGB pm

write tb_OTA_gf180_loogGain_mb.raw

*quit
.endc
"}
C {capa.sym} 1560 -90 0 0 {name=C2
m=1
value=1.5p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 1560 -60 0 0 {name=l9 lab=GND}
C {isource.sym} 1250 -270 0 0 {name=I1 value=5u}
C {lab_wire.sym} 1230 -100 2 0 {name=p9 sig_type=std_logic lab=vss}
C {lab_wire.sym} 1070 -140 0 0 {name=p10 sig_type=std_logic lab=vip}
C {lab_wire.sym} 1250 -380 1 0 {name=p11 sig_type=std_logic lab=vdd}
C {devices/vsource.sym} 620 100 3 0 {name=Vtest2 value="dc 0 ac 1"}
C {devices/lab_wire.sym} 550 100 0 0 {name=p13 sig_type=std_logic lab=vf1}
C {devices/lab_wire.sym} 700 100 0 0 {name=p14 sig_type=std_logic lab=vr1}
C {devices/ammeter.sym} 1330 70 1 0 {name=Vir1 savecurrent=true spice_ignore=0}
C {devices/ammeter.sym} 1230 70 1 0 {name=Vif1 savecurrent=true spice_ignore=0}
C {devices/isource.sym} 1280 140 2 0 {name=Itest1 value="dc 0 ac 1"}
C {gnd.sym} 1280 190 0 0 {name=l8 lab=GND}
C {lab_wire.sym} 450 -340 2 0 {name=p1 sig_type=std_logic lab=vss}
C {/foss/designs/Amplifier-Design/single_ended_opamp/xschem/BUFFER_OTA_1.sym} 610 -150 0 0 {name=x3}
C {/foss/designs/Amplifier-Design/single_ended_opamp/xschem/BUFFER_OTA_1.sym} 1250 -160 0 0 {name=x1}
