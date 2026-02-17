
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name BACKUP_FPGA1_3SEC -dir "/home/ise/Share_With_VM/BACKUP_FPGA1_3SEC/planAhead_run_1" -part xc6slx9tqg144-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Digital_Logic_Battle_Input.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {../backup_project_auto_reset/delay_3sec.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Action_Selector.vf}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Digital_Logic_Battle_Input.vf}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Digital_Logic_Battle_Input $srcset
add_files [list {Digital_Logic_Battle_Input.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx9tqg144-3
