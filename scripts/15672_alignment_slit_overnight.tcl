# D5 aperture
# Moved detectors
set rotation {
  80.0
  80.4
  80.8
  81.2
  81.6
  82.0
  82.4	
  82.8
  83.2
  83.6	
  84.0	
  84.4
  84.8
  85.2
  85.6
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
  94.4
  94.8
  95.2	
  95.6
  96.0
  96.4
  96.8
  97.2
  97.6	
  98.0
  98.4
  98.8	
  99.2	
  99.6
  100.0	
  100.4
  100.8
  101.2	
  101.6
  102.0
  102.4
  102.8
  103.2
  103.6	
  104.0
  104.4	
  104.8	
  105.2	
  105.6	
  106.0
  106.4	
  106.8
  107.2	
  107.6	
  108.0
  108.4	
  108.8
  109.2
  109.6
  110.0	
}

histmem mode time
histmem preset 120

foreach angle $rotation {
	clientput drive msom $angle
	drive msom $angle
        newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}