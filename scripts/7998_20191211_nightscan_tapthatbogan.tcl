set field {
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
  0.1
  0.2
}

histmem mode time
histmem preset 270

          
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
}

histmem mode time
histmem preset 270

foreach pos $field1 {
	clientput drive ma1_magnet_setpoint $pos
	drive ma1_magnet_setpoint $pos
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive ma1_magnet_setpoint -0.025
drive ma1_magnet_setpoint -0.025

set phis {
  -5
  -4
  -3
  -2
  -1
  0
  1
  2
  3
  4
  5
}

histmem mode time
histmem preset 140

foreach phi $phis {
	clientput drive samphi $phi
	drive samphi $phi  
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive samphi 0
drive samphi 0

set som2angles {
  -5
  -4
  -3
  -2
  -1
  0
  1
  2
  3
  4
  5
}

histmem mode time
histmem preset 140

foreach som2angle $som2angles {
	clientput drive som2 $som2angle
	drive som2 $som2angle  
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive som2 0
drive som2 0

set field2 {
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
histmem preset 270
     
foreach pos $field2 {
	clientput drive ma1_magnet_setpoint $pos
	drive ma1_magnet_setpoint $pos
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}
