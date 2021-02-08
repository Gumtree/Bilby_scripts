
histmem preset 240


for {set idx0 0} {$idx0 < 500} {incr idx0} {
	
	broadcast CURRENT LOOP = $idx0
	
	drive att_pos 2
	run bs4 0
	samplename Pinczow_73D2O_19HCl_part1-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	run bs4 65.8
	drive att_pos 1
	samplename Pinczow_73D2O_19HCl_part1-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}

}


