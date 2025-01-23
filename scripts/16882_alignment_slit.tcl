# alignment

set rotation {
  -1.2
  -0.8
  -0.4
  0
  0.4
  0.8
}

histmem mode time
histmem preset 300

foreach angle $rotation {
	clientput drive som2 $angle
	drive som2 $angle
        newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}