onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+axi_protocol_checker_0 -L xilinx_vip -L xpm -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_10 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.axi_protocol_checker_0 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {axi_protocol_checker_0.udo}

run -all

endsim

quit -force
