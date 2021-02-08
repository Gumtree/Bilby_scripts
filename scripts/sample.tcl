# Multi-dimensional Scan Block
title "scanND (sy 18.46 19.66 7:sx 12.0 14.0 5) time 250.0"
histmem mode time
histmem preset 250.0
newfile HISTOGRAM_XYT
set savenumber 0

set START_NUMBER 0
set loopnumber 0
for {set idx0 0} {$idx0 < 7} {incr idx0} {
	if {$START_NUMBER <= $loopnumber} {
		drive sy [expr $idx0*0.2+18.46]
	}
	for {set idx1 0} {$idx1 < 5} {incr idx1} {
		if {$START_NUMBER <= $loopnumber} {
			drive sx [expr $idx1*0.5+12.0]
			broadcast sy = [expr $idx0*0.2+18.46]
			broadcast sx = [expr $idx1*0.5+12.0]
			broadcast CURRENT LOOP = $loopnumber
			histmem start block
			save $savenumber
		}
		incr savenumber
		incr loopnumber
	}
}


drive sz 250
drive som -45
drive sz 321


# Multi-dimensional Scan Block
title "scanND (sy 18.86 20.060001 7:sx 12.0 14.0 5) time 250.0"
histmem mode time
histmem preset 250.0
newfile HISTOGRAM_XYT
set savenumber 0

set START_NUMBER 0
set loopnumber 0
for {set idx0 0} {$idx0 < 7} {incr idx0} {
	if {$START_NUMBER <= $loopnumber} {
		drive sy [expr $idx0*0.2+18.86]
	}
	for {set idx1 0} {$idx1 < 5} {incr idx1} {
		if {$START_NUMBER <= $loopnumber} {
			drive sx [expr $idx1*0.5+12.0]
			broadcast sy = [expr $idx0*0.2+18.86]
			broadcast sx = [expr $idx1*0.5+12.0]
			broadcast CURRENT LOOP = $loopnumber
			histmem start block
			save $savenumber
		}
		incr savenumber
		incr loopnumber
	}
}


drive sz 250
drive som 45
drive sz 321


# Multi-dimensional Scan Block
title "scanND (sy 19.01 20.210001 7:sx 12.0 14.0 5) time 250.0"
histmem mode time
histmem preset 250.0
newfile HISTOGRAM_XYT
set savenumber 0

set START_NUMBER 0
set loopnumber 0
for {set idx0 0} {$idx0 < 7} {incr idx0} {
	if {$START_NUMBER <= $loopnumber} {
		drive sy [expr $idx0*0.2+19.01]
	}
	for {set idx1 0} {$idx1 < 5} {incr idx1} {
		if {$START_NUMBER <= $loopnumber} {
			drive sx [expr $idx1*0.5+12.0]
			broadcast sy = [expr $idx0*0.2+19.01]
			broadcast sx = [expr $idx1*0.5+12.0]
			broadcast CURRENT LOOP = $loopnumber
			histmem start block
			save $savenumber
		}
		incr savenumber
		incr loopnumber
	}
}


drive sz 250
drive som 135
drive sz 321


# Multi-dimensional Scan Block
title "scanND (sy 18.48 19.68 7:sx 12.0 14.0 5) time 250.0"
histmem mode time
histmem preset 250.0
newfile HISTOGRAM_XYT
set savenumber 0

set START_NUMBER 0
set loopnumber 0
for {set idx0 0} {$idx0 < 7} {incr idx0} {
	if {$START_NUMBER <= $loopnumber} {
		drive sy [expr $idx0*0.2+18.48]
	}
	for {set idx1 0} {$idx1 < 5} {incr idx1} {
		if {$START_NUMBER <= $loopnumber} {
			drive sx [expr $idx1*0.5+12.0]
			broadcast sy = [expr $idx0*0.2+18.48]
			broadcast sx = [expr $idx1*0.5+12.0]
			broadcast CURRENT LOOP = $loopnumber
			histmem start block
			save $savenumber
		}
		incr savenumber
		incr loopnumber
	}
}


