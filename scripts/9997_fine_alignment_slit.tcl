# D30 slit
# Moved detectors
set rotation {
  89.65
  89.7
  89.75
  89.8	
  89.85
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