
set temperature {
  1.6
}

set field {
  0.2
  0.078
  0.072
  0.066
  0.06
  0.054
  0.048
  0.042
  0.036
  0.03
  0.024
  0.018
  0.012
  0.006
  0
  -0.006
  -0.012
  -0.018
  -0.024
  -0.03
  -0.036
  -0.042
  -0.048
  -0.054
  -0.06
  -0.066
  -0.072
  -0.078
  -0.1
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


