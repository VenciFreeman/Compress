onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -pli "C:/Xilinx/Vivado/2016.4/lib/win64.o/libxil_vsim.dll" -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.design_1

do {wave.do}

view wave
view structure
view signals

do {design_1.udo}

run -all

quit -force
