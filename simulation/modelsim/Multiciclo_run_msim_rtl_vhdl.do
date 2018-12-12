transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/regbuf.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/reg.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/mips_pkg.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/resize32_8.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/resize32_16.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/mips_ram.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/decoder2_4.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/ulamips.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/mux_4.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/mux_3.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/mux_2.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/mips_multi.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/mips_control.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/extsgn.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/breg.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/alu_ctr.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/extusgn.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/extshamt.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/byte_select.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/half_word_select.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/mux_8_load.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/mux_16_load.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/mux_32.vhd}
vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/mux2_8bits.vhd}

vcom -93 -work work {//vmware-host/Shared Folders/shared/projFinal/mips-multiciclo/mips_ram_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  mips_ram_tb

add wave *
view structure
view signals
run 100 ps
