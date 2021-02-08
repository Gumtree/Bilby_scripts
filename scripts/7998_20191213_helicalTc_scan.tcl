
set temperature {
  18
  18.75
  18.5
  18.25
  18
  17.75
  17.5
  17.25
  17
  16.75
  16.5
  16.25
  16
  15.75
  15.5
  15.25
  15
  14.75
  14.5
  14.25
  14
}

histmem mode time
histmem preset 120

          
foreach temp $temperature {
	clientput drive tc1_driveable $temp
	drive tc1_driveable $temp
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}



