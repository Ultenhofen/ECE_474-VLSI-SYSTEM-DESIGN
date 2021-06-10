vlog glitchless.gate.v /nfs/guille/a1/cadlibs/synop_lib/SAED_EDK90nm/Digital_Standard_Cell_Library/verilog/*.v  -work glitchless_work
vsim glitchless_work.no_glitch -novopt -t ps

add wave *

force -freeze sim:/no_glitch/go 1'h0 0
force -freeze sim:/no_glitch/go 1'h1 3.1ns
force -freeze sim:/no_glitch/go 1'h0 5.1ns
force -freeze sim:/no_glitch/ws 1'h0 0
force -freeze sim:/no_glitch/ws 1'h1 5.1ns
force -freeze sim:/no_glitch/reset_n 1'h0 0
force -freeze sim:/no_glitch/reset_n 1'h1 2.1ns
force -freeze sim:/no_glitch/clk 1 0, 0 {0.5 ns} -r 1ns:

run 10ns
