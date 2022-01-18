onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib demo_1_0_opt

do {wave.do}

view wave
view structure
view signals

do {demo_1_0.udo}

run -all

quit -force
