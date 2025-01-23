# alignment

set rotation {
  0
  0.1
  0.2
  0.3
  0.4
  0.5	
  0.6
  0.7	
  0.8	
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