onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+axi_uartlite_0 -L xilinx_vip -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.axi_uartlite_0 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {axi_uartlite_0.udo}

run -all

endsim

quit -force
