set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {hart} -view {{hart_dataflow_ana.wcfg}} -tclbatch {hart.tcl} -protoinst {hart.protoinst}
