onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+uart_bd -L xilinx_vip -L xpm -L xil_defaultlib -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.uart_bd xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {uart_bd.udo}

run -all

endsim

quit -force
