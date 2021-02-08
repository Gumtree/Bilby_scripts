set temperature {
  1.6
}

set field {
  0
  0.009
  0.018
  0.027
  0.036
  0.045
  0.054
  0.063
  0.072

}

histmem mode time
histmem preset 80

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
