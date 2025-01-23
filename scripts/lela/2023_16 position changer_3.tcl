

samplename pos11_mask_top_nopeek_shroud_nowindow_close
#drive samx -150
drive att_pos 2
drive bs4 0
histmem preset 1200
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}


samplename pos11_mask_top_nopeek_shroud_nowindow_close
#drive samx -150
drive bs4 65.8
drive att_pos 1
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}