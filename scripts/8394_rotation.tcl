
set som2rot {
  -1.5
  -1
  -0.5
  -0	
  0.5
  1
  1.5
  1.75
  2
  2.25
  2.5
  3
  3.5
  4	
}

histmem mode time
histmem preset 60

foreach som2 $som2rot {
	clientput drive som2 $som2
	drive som2 $som2
	
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}