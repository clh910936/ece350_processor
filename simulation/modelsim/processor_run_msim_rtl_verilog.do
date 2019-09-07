transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/carri/Documents/College/Semester\ 5/ECE350/ece350_processor {C:/Users/carri/Documents/College/Semester 5/ECE350/ece350_processor/one_bit_adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/carri/Documents/College/Semester\ 5/ECE350/ece350_processor {C:/Users/carri/Documents/College/Semester 5/ECE350/ece350_processor/eight_bit_look_ahead_adder.v}
vlog -vlog01compat -work work +incdir+C:/Users/carri/Documents/College/Semester\ 5/ECE350/ece350_processor {C:/Users/carri/Documents/College/Semester 5/ECE350/ece350_processor/c.v}
vlog -vlog01compat -work work +incdir+C:/Users/carri/Documents/College/Semester\ 5/ECE350/ece350_processor {C:/Users/carri/Documents/College/Semester 5/ECE350/ece350_processor/c_8.v}
vlog -vlog01compat -work work +incdir+C:/Users/carri/Documents/College/Semester\ 5/ECE350/ece350_processor {C:/Users/carri/Documents/College/Semester 5/ECE350/ece350_processor/full_adder.v}

