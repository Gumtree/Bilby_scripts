# D7.5 aperture
# Moved detectors
set rotation {
  95.0
  95.1	
  95.2
  95.3
  95.4
  95.5
  95.6
  95.7	
  95.8
  95.9
  96.0
  96.1	
  96.2
  96.3
  96.4
  96.5
  96.6
  96.7	
  96.8
  96.9
  97.0
  97.1	
  97.2
  97.3  
  97.4
  97.5
  97.6
  97.7	
  97.8
  97.9
  98.0
  98.1	
  98.2
  98.3  
  98.4
  98.5
  98.6
  98.7	
  98.8
  98.9
  99.0
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