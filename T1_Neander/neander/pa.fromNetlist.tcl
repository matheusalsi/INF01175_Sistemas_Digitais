
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name neander -dir "D:/source/Github/Sistemas Digitais/neander/planAhead_run_2" -part xc3s100ecp132-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/source/Github/Sistemas Digitais/neander/neander.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/source/Github/Sistemas Digitais/neander} }
set_property target_constrs_file "neander.ucf" [current_fileset -constrset]
add_files [list {neander.ucf}] -fileset [get_property constrset [current_run]]
link_design
