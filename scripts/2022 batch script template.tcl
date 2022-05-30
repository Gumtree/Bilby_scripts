



for {set idx0 0} {$idx0 < 2} {incr idx0} {
	
	broadcast CURRENT LOOP = $idx0
	

	histmem preset 600
	
	drive bs4 65.8
	drive att_pos 1

	drive samx 385.0
	samplename sample-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}

        histmem preset 120
        
        drive att_pos 2
	drive bs4 0
	
	samplename Transmission_sample-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}

}



