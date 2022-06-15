connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210512180081" && level==0} -index 1
fpga -file C:/Users/Epoch/Desktop/ecg_Arrhythmia/Vitis_workspace/ecg_Arrhythmia/_ide/bitstream/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw E:/vivado_tools_2019.2/Vitis_workspace/system_wrapper/export/system_wrapper/hw/system_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/Epoch/Desktop/ecg_Arrhythmia/Vitis_workspace/ecg_Arrhythmia/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/Epoch/Desktop/ecg_Arrhythmia/Vitis_workspace/ecg_Arrhythmia/Debug/ecg_Arrhythmia.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
