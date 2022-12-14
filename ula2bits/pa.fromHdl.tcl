
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name lab1 -dir "C:/Sistemas Digitais/lab1/planAhead_run_1" -part xc6slx16csg324-3N
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "ula2bits.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ula2bits.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top ula2bits $srcset
add_files [list {ula2bits.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3N
