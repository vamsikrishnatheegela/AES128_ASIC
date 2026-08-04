create_clock -name clk -period 10 [get_ports clk]

set_input_delay 1 -clock clk [all_inputs]

set_output_delay 1 -clock clk [all_outputs]

set_load 0.1 [all_outputs]

set_driving_cell -lib_cell NAND2X1 [all_inputs]
