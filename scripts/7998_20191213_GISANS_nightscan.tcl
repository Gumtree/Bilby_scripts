
set som2angles {
  -0.46
  -0.51
  -0.56
  -0.61
  -0.66
  -0.71
  -0.76
  -0.81
  -0.86
  -0.91
  -0.96
  -1.01
  -1.06
  -1.11
  -1.16
  -1.21
  -1.26
}

histmem mode time
histmem preset 1800

foreach som2angle $som2angles {
	clientput drive som2 $som2angle
	drive som2 $som2angle  
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive som2 -0.86
drive som2 -0.86

