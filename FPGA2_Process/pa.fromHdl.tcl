
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name FPGA2_Process -dir "/home/ise/Share_With_VM/FPGA2_Process/planAhead_run_1" -part xc6slx9tqg144-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Digital_Logic_Battle_Process.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ipcore_dir/clk_wizard.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {VGA_Controller.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {delay_3sec.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {clk20MHz_to_25MHz.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Action_Handler.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Digital_Logic_Battle_Process.vf}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Digital_Logic_Battle_Process $srcset
add_files [list {Digital_Logic_Battle_Process.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx9tqg144-3
