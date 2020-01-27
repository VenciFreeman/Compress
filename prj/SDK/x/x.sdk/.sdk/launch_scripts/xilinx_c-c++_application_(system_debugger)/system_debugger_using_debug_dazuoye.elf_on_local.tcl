connect -url tcp:127.0.0.1:3121
source C:/Users/Venci/Desktop/microe/Lab3/x/x.sdk/system_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279539142A"} -index 0
loadhw C:/Users/Venci/Desktop/microe/Lab3/x/x.sdk/system_wrapper_hw_platform_0/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279539142A"} -index 0
stop
ps7_init
ps7_post_config
