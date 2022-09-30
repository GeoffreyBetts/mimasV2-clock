
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Clock -dir "E:/Xilinx/projects/mimasV2-clock/planAhead_run_3" -part xc6slx9csg324-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/Xilinx/projects/mimasV2-clock/top_module.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/Xilinx/projects/mimasV2-clock} }
set_property target_constrs_file "clock_constraints.ucf" [current_fileset -constrset]
add_files [list {clock_constraints.ucf}] -fileset [get_property constrset [current_run]]
link_design
