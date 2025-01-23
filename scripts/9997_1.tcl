set rotation {
  80.0
  80.5
  81.0
  81.5
  82.0
  82.5
  83.0
  83.5
  84.0
  84.5
  85.0
  85.5
  86.0
  86.5
  87.0
  87.5
  88.0
  88.5
  89.0
  89.5
  90.0
  90.5
  91.0
  91.5
  92.0
  92.5
  93.0
  93.5
  94.0
  94.5
  95.0
  95.5
  96.0
  96.5
  97.0
  97.5
  98.0
  98.5
  99.0
  99.5
  100.0
}

histmem mode time
histmem preset 240

foreach angle $rotation {
	clientput drive msom $angle
	drive msom $angle
        newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}