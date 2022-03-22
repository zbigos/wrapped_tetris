###############################################################################
# Created by write_sdc
# Tue Mar 22 04:04:24 2022
###############################################################################
current_design top
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name wb_clk_i -period 20.0000 
set_clock_uncertainty 0.2500 wb_clk_i
set_input_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {butt1}]
set_input_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {butt2}]
set_input_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {butt3}]
set_input_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {butt4}]
set_input_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {clk}]
set_input_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {reset}]
set_output_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {vga_b[0]}]
set_output_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {vga_b[1]}]
set_output_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {vga_b[2]}]
set_output_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {vga_b[3]}]
set_output_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {vga_g[0]}]
set_output_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {vga_g[1]}]
set_output_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {vga_g[2]}]
set_output_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {vga_g[3]}]
set_output_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {vga_h_sync}]
set_output_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {vga_r[0]}]
set_output_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {vga_r[1]}]
set_output_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {vga_r[2]}]
set_output_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {vga_r[3]}]
set_output_delay 4.0000 -clock [get_clocks {wb_clk_i}] -add_delay [get_ports {vga_v_sync}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {vga_h_sync}]
set_load -pin_load 0.0334 [get_ports {vga_v_sync}]
set_load -pin_load 0.0334 [get_ports {vga_b[3]}]
set_load -pin_load 0.0334 [get_ports {vga_b[2]}]
set_load -pin_load 0.0334 [get_ports {vga_b[1]}]
set_load -pin_load 0.0334 [get_ports {vga_b[0]}]
set_load -pin_load 0.0334 [get_ports {vga_g[3]}]
set_load -pin_load 0.0334 [get_ports {vga_g[2]}]
set_load -pin_load 0.0334 [get_ports {vga_g[1]}]
set_load -pin_load 0.0334 [get_ports {vga_g[0]}]
set_load -pin_load 0.0334 [get_ports {vga_r[3]}]
set_load -pin_load 0.0334 [get_ports {vga_r[2]}]
set_load -pin_load 0.0334 [get_ports {vga_r[1]}]
set_load -pin_load 0.0334 [get_ports {vga_r[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {butt1}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {butt2}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {butt3}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {butt4}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {reset}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 5.0000 [current_design]
