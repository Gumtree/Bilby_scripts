
set samphirot {
  -4
  -3.5
  -3
  -2.5
  -2
  -1.5
  -1
  -0.5
  0	
  0.5
  1
  1.5
  2
  2.5
  3
  3.5
  4	
}

histmem mode time
histmem preset 60

foreach phi $samphirot {
	clientput drive samphi $phi
	drive samphi $phi
	
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}