set field {
  0.0
  0.006
  0.012
  0.018
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
  0.069
  0.075
  0.081
  0.2
}

histmem mode time
histmem preset 20

        
foreach pos $field {
	clientput drive ma1_magnet_setpoint $pos
	drive ma1_magnet_setpoint $pos
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

set field1 {
  0.081
  0.075
  0.069
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
  0.018
  0.012
  0.006
  0.0
  -0.006
  -0.012
  -0.018
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
  -0.069
  -0.075
  -0.081
  -0.1
}

histmem mode time
histmem preset 20
     
foreach pos $field1 {
	clientput drive ma1_magnet_setpoint $pos
	drive ma1_magnet_setpoint $pos
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

set field2 {
  -0.081
  -0.075
  -0.069
  -0.063
  -0.06
  -0.057
  -0.054
  -0.051
  -0.048
  -0.045
  -0.042
  -0.039
  -0.036
  -0.033
  -0.03
  -0.027
  -0.024
  -0.018
  -0.012
  -0.006
  0.0
  0.006
  0.012
  0.018
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
  0.069
  0.075
  0.081
  0.1
}

histmem mode time
histmem preset 20
     
foreach pos $field2 {
	clientput drive ma1_magnet_setpoint $pos
	drive ma1_magnet_setpoint $pos
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}
