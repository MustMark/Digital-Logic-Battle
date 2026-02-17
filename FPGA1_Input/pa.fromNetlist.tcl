
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name BACKUP_FPGA1_3SEC -dir "/home/ise/Share_With_VM/BACKUP_FPGA1_3SEC/planAhead_run_3" -part xc6slx9tqg144-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/ise/Share_With_VM/BACKUP_FPGA1_3SEC/Digital_Logic_Battle_Input.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/ise/Share_With_VM/BACKUP_FPGA1_3SEC} }
set_property target_constrs_file "Digital_Logic_Battle_Input.ucf" [current_fileset -constrset]
add_files [list {Digital_Logic_Battle_Input.ucf}] -fileset [get_property constrset [current_run]]
link_design
