# D2.5 aperture
# Moved detectors
set rotation {
  86.0
  86.4
  86.8
  87.2
  87.6
  88.0
  88.4
  88.8	
  89.2
  89.6
  90.0
  90.4
  90.8	
  91.2
  91.6	
  92.0
  92.4
  92.8
  93.2
  93.6
  94.0
}

histmem mode time
histmem preset 30

foreach angle $rotation {
	clientput drive msom $angle
	drive msom $angle
        newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}