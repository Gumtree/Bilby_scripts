histmem mode time
histmem preset 1200

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	newfile HISTOGRAM_XYT
	title K_PS_75D2O-[expr $idx0]
	histmem start block
	save
}

histmem stop

