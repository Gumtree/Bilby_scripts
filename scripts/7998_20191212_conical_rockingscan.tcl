
set som2angles {
  -96.5
  -95.5
  -94.5
  -93.5
  -92.5
  -91.5
  -90.5
  -89.5
  -88.5
  -87.5
  -86.5
  -85.5
  -84.5
}

histmem mode time
histmem preset 100

foreach som2angle $som2angles {
	clientput drive som2 $som2angle
	drive som2 $som2angle  
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive som2 -90.5
drive som2 -90.5

