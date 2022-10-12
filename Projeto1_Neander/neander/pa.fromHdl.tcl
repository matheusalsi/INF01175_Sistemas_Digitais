
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name neander -dir "D:/source/Github/Sistemas Digitais/neander/planAhead_run_1" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "neander.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {neander.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top neander $srcset
add_files [list {neander.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
