# alignment

set rotation {
83.0
83.1
83.2
83.3
83.4
83.5
83.6
83.7
83.8
83.9
84.0
}

histmem mode time
histmem preset 60

foreach angle $rotation {
	clientput drive som2 $angle
	drive som2 $angle
        newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}