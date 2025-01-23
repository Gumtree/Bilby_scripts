set rotation {
	80
	80.5
	81
	81.5
	82
	82.5
	83
	83.5
	84
	84.5
	85
	85.5
	86
	86.5
	87
	87.5
	88
	88.5
	89
	89.5
	90
}

histmem mode time
histmem preset 60

foreach angle $rotation {
	clientput drive msom $angle
	drive msom $angle
        newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}