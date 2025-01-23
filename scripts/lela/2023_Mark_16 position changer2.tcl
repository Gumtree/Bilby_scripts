

drive samx +90
samplename pos7_nomask_notop_nopeek_shroud_nowindow
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx +210
samplename pos5_bb_nomask_notop_nopeek_shroud_nowindow
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx +330
samplename pos3_nomask_notop_nopeek_shroud_window
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx -150
samplename pos11_mask_notop_nopeek_noshroud_nowindow
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx -330
samplename pos14_nomask_notop_nopeek_noshroud_nowindow
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx -450
samplename pos16_nomask_notop_peek_noshroud_nowindow
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx +90
samplename pos7_nomask_notop_nopeek_shroud_nowindow
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx +210
samplename pos5_bb_nomask_notop_nopeek_shroud_nowindow
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx +330
samplename pos3_nomask_notop_nopeek_shroud_window
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}



