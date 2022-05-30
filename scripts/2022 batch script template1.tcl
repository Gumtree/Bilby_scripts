
drive samx 385.0
histmem preset 60


for {set idx0 0} {$idx0 < 2} {incr idx0} {
	
	broadcast CURRENT LOOP = $idx0

	samplename sample-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}



