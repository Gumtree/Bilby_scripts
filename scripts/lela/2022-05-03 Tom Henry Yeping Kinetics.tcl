

	




drive samx 0

for {set idx0 0} {$idx0 < 9} {incr idx0} {
	
	
	
	samplename HC_0CD4_1000H2O-[expr $idx0]
	
	broadcast CURRENT LOOP = $idx0
	
	histmem preset 120
	drive att_pos 2
	drive bs5 0	
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	histmem preset 3600
	drive bs5 65.0
	drive att_pos 1	
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}


drive samx 200

samplename EmptyBeam

histmem preset 120
drive att_pos 2
drive bs5 0	
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

histmem preset 600
drive bs5 65.0
drive att_pos 1	
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}
