set field {
  0.1
  0.15
}

set temperature {
  10.0
  10.3
}

histmem mode time
histmem preset 10

foreach temp $temperature {
	clientput drive tc1_driveable $temp
	drive tc1_driveable $temp           
	foreach pos $field {
		clientput drive ma1_driveable $pos
		drive ma1_driveable $pos
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
	}
}