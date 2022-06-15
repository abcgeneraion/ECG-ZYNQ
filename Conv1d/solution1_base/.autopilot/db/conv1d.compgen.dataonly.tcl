# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL {
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
in_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
weight_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
bias_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
out_V { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
ch_in { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
ch_out { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
size { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
pool { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 72
	offset_end 79
}
}
dict set axilite_register_dict CTRL $port_CTRL


