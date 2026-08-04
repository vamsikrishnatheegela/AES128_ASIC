read_verilog synthesis/aes_round_netlist.v

link_design aes_top

read_liberty /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib

read_sdc constraints/aes.sdc

report_checks

report_tns

report_wns

exit
