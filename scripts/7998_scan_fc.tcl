set temperature {
  1.6
}

set field {
  0.009
  0.006
  0.003
  0
  -0.003
  -0.006
  -0.009
  -0.012
  -0.015
  -0.018
  -0.021
  -0.024
  -0.027
  -0.03
  -0.033
  -0.036
  -0.039
  -0.042
  -0.045
  -0.048
  -0.051
  -0.054
  -0.057
  -0.06
  -0.063
  -0.066
  -0.069
  -0.072
  -0.075
  -0.078
  -0.081
  -0.1
}

histmem mode time
histmem preset 200

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

clientput drive tc1_driveable 25
drive tc1_driveable 25

clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0

set temperature_1 {
  8.0
}

set field_1 {
  0
  0.003
  0.006
  0.009
  0.012
  0.015
  0.018
  0.021
  0.024
  0.027
  0.03
  0.033
  0.036
  0.039
  0.042
  0.045
  0.048
  0.051
  0.054
  0.057
  0.06
  0.063
  0.066
  0.069
  0.072
  0.075
  0.078
  0.081
}

foreach temp $temperature_1 {
	clientput drive tc1_driveable $temp
	drive tc1_driveable $temp           
	foreach pos $field_1 {
		clientput drive ma1_magnet_setpoint $pos
		drive ma1_magnet_setpoint $pos
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
	}
}

clientput drive tc1_driveable 25
drive tc1_driveable 25

clientput drive ma1_magnet_setpoint 0.1
drive ma1_magnet_setpoint 0.1

set temperature_2 {
  8
}

set field_2 {
  0.081
  0.078
  0.075
  0.072
  0.069
  0.066
  0.063
  0.06
  0.057
  0.054
  0.051
  0.048
  0.045
  0.042
  0.039
  0.036
  0.033
  0.03
  0.027
  0.024
  0.021
  0.018
  0.015
  0.012
  0.009
  0.006
  0.003
  0
  -0.003
  -0.006
  -0.009
  -0.012
  -0.015
  -0.018
  -0.021
  -0.024
  -0.027
  -0.03
  -0.033
  -0.036
  -0.039
  -0.042
  -0.045
  -0.048
  -0.051
  -0.054
  -0.057
  -0.06
  -0.063
  -0.066
  -0.069
  -0.072
  -0.075
  -0.078
  -0.081
  -0.1
}

foreach temp $temperature_2 {
	clientput drive tc1_driveable $temp
	drive tc1_driveable $temp           
	foreach pos $field_2 {
		clientput drive ma1_magnet_setpoint $pos
		drive ma1_magnet_setpoint $pos
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
	}
}
