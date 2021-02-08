
set temperature {
  25
  24
  23
  22
  21
  20
  19
  18
  17	
}

histmem mode time
histmem preset 60

foreach temp $temperature {
	clientput drive tc1_driveable $temp
	drive tc1_driveable $temp
	
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}