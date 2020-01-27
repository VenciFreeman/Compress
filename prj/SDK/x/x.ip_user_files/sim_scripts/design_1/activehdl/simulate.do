onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+design_1 -pli "C:/Xilinx/Vivado/2016.4/lib/win64.o/libxil_vsim.dll" -L xil_defaultlib -L secureip -O5 xil_defaultlib.design_1

do {wave.do}

view wave
view structure

do {design_1.udo}

run -all

endsim

quit -force
