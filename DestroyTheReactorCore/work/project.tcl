set projDir "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/planAhead"
set projName "DesetroyTheReactorCoreBase"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/mojo_top_0.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/reset_conditioner_1.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/button_conditioner_2.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/edge_detector_3.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/missile_fsm_4.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/seven_seg_lives_5.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/seven_seg_score_6.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/pipeline_7.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/register_8.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/register_8.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/register_8.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/register_8.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/register_8.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/register_8.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/register_8.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/register_8.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/register_8.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/register_17.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/register_17.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/register_19.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/register_8.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/register_21.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/register_19.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/multiplexer_23.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/alu16_unit_24.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/digit_lut_25.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/digit_lut_lsb_26.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/compare_unit_27.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/shifter_unit_28.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/adder_unit_29.v" "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/work/verilog/boolean_unit_30.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "C:/Users/aidenchia/Documents/mojo/FUCKTHIS/constraint/custom.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
