set rotation {
  94.0
  94.05 
  94.1
  94.15	
  94.2
  94.25
  94.3
  94.35	
  94.4
}

histmem mode time
histmem preset 35

foreach angle $rotation {
	clientput drive msom $angle
	drive msom $angle
        newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}
