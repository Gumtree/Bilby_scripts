
set field {
  0.0
  0.006
  0.012
  0.018
  0.024
  0.030
  0.036
  0.042
  0.048
  0.054
  0.06
  0.066
  0.072
  0.078
  0.1
}

histmem mode time
histmem preset 100

          
foreach pos $field {
	clientput drive ma1_magnet_setpoint $pos
	drive ma1_magnet_setpoint $pos
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive tc1_driveable 25
drive tc1_driveable 25

clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0


clientput drive tc1_driveable 9
drive tc1_driveable 9

histmem mode time
histmem preset 180

	  
foreach pos $field {
	clientput drive ma1_magnet_setpoint $pos
	drive ma1_magnet_setpoint $pos
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive tc1_driveable 25
drive tc1_driveable 25

clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0



clientput drive tc1_driveable 10
drive tc1_driveable 10

histmem mode time
histmem preset 100

	  
foreach pos $field {
	clientput drive ma1_magnet_setpoint $pos
	drive ma1_magnet_setpoint $pos
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive tc1_driveable 25
drive tc1_driveable 25

clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0


clientput drive tc1_driveable 11
drive tc1_driveable 11

histmem mode time
histmem preset 100

	  
foreach pos $field {
	clientput drive ma1_magnet_setpoint $pos
	drive ma1_magnet_setpoint $pos
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive tc1_driveable 25
drive tc1_driveable 25

clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0



clientput drive tc1_driveable 12
drive tc1_driveable 12

histmem mode time
histmem preset 100

	  
foreach pos $field {
	clientput drive ma1_magnet_setpoint $pos
	drive ma1_magnet_setpoint $pos
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive tc1_driveable 25
drive tc1_driveable 25

clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0



clientput drive tc1_driveable 13
drive tc1_driveable 13

histmem mode time
histmem preset 100

	  
foreach pos $field {
	clientput drive ma1_magnet_setpoint $pos
	drive ma1_magnet_setpoint $pos
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive tc1_driveable 25
drive tc1_driveable 25

clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0



clientput drive tc1_driveable 14
drive tc1_driveable 14

histmem mode time
histmem preset 100

	  
foreach pos $field {
	clientput drive ma1_magnet_setpoint $pos
	drive ma1_magnet_setpoint $pos
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive tc1_driveable 25
drive tc1_driveable 25

clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0



clientput drive tc1_driveable 15
drive tc1_driveable 15

histmem mode time
histmem preset 100

	  
foreach pos $field {
	clientput drive ma1_magnet_setpoint $pos
	drive ma1_magnet_setpoint $pos
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive tc1_driveable 25
drive tc1_driveable 25

clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0



clientput drive tc1_driveable 16
drive tc1_driveable 16

histmem mode time
histmem preset 100

	  
foreach pos $field {
	clientput drive ma1_magnet_setpoint $pos
	drive ma1_magnet_setpoint $pos
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive tc1_driveable 25
drive tc1_driveable 25

clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0



clientput drive tc1_driveable 17
drive tc1_driveable 17

histmem mode time
histmem preset 100

	  
foreach pos $field {
	clientput drive ma1_magnet_setpoint $pos
	drive ma1_magnet_setpoint $pos
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive tc1_driveable 25
drive tc1_driveable 25

clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0

