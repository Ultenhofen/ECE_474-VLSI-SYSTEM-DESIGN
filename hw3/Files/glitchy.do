# ds Behavior explanation:
# During a rising clock edge, there is a point where there is sufficient delay
# to cause one register to load a value and the other register to not load a value
# despite needing to load a value at that time. Once the clock rises again, the register
# will load the value it was supposed to have and the glitch disappears. This is caused
# by propagation delays.

vlog glitchy.gate.v /nfs/guille/a1/cadlibs/synop_lib/SAED_EDK90nm/Digital_Standard_Cell_Library/verilog/*.v  -work glitch_work
vsim glitch_work.glitch -novopt -t ps

add wave *

force -freeze sim:/glitch/go 1'h0 0
force -freeze sim:/glitch/go 1'h1 3.1ns
force -freeze sim:/glitch/go 1'h0 5.1ns
force -freeze sim:/glitch/ws 1'h0 0
force -freeze sim:/glitch/ws 1'h1 5.1ns
force -freeze sim:/glitch/reset_n 1'h0 0
force -freeze sim:/glitch/reset_n 1'h1 2.1ns
force -freeze sim:/glitch/clk 1 0, 0 {0.5 ns} -r 1ns:

run 10ns
