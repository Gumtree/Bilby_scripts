
set som2angles {
  1
  -1.1
  -1.2
  -1.3
  -1.4
  -1.5
  -1.6
  -1.7
  -1.8
  -1.9
  -2.0
}

histmem mode time
histmem preset 10

foreach som2angle $som2angles {
	clientput drive som2 $som2angle
	drive som2 $som2angle  
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive som2 0
drive som2 0

