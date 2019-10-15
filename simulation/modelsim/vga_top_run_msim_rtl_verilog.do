transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/DELL/Desktop/VGA_Controller {C:/Users/DELL/Desktop/VGA_Controller/new_visible.sv}
vlog -sv -work work +incdir+C:/Users/DELL/Desktop/VGA_Controller {C:/Users/DELL/Desktop/VGA_Controller/new_vis_tb.sv}

