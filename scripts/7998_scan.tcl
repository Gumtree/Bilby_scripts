set temperature {
  1.6
}

set field {
  0.100
}

histmem mode time
histmem preset 300

foreach temp $temperature {
	clientput drive tc1_driveable $temp
	drive tc1_driveable $temp           
	foreach pos $field {
		clientput drive ma1_magnet_setpoint $pos
		drive ma1_magnet_setpoint $pos
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
	}
}