# Sample area VTI
clientput run tc1_temp0_setpoint 2.0
run tc1_temp0_setpoint 2.0

# Sample sensor
clientput drive tc2_temp0_setpoint 2.0
drive tc2_temp0_setpoint 2.0

# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 240
run tc1_pres8_setpoint 240

histmem mode time
histmem preset 7200

set field {
  0.0
  0.1
  0.2
  0.3
  0.4
  0.5
  0.6
  1.5	
}

	
foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0

