# Loading project MIPS_Nermeen_Alaa
vsim -do MIPs_run.do
#create work library
vlog -f tb.f
vsim -voptargs=+acc work.testbench
add wave -position insertpoint sim:/testbench/*
add wave -position insertpoint sim:/testbench/dut/mips/dp/rf/*
run 215 ns;
onbreak {resume}
exit;