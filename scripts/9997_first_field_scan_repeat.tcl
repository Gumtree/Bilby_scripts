# 1.5K temperature, cooled in 0T field

# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 5
drive tc1_pres8_setpoint 5

# Sample area VTI
clientput run tc1_temp0_setpoint 1.5
run tc1_temp0_setpoint 1.5

# Sample sensor
clientput drive tc2_temp0_setpoint 1.5
drive tc2_temp0_setpoint 1.5

# Field scan
set field {
  0.0
  0.1
  0.2
  0.3
  0.4
  0.5
  0.6
  0.7
  0.8
  0.9
  1.0
  1.1
  1.2
  1.3
  1.4
  1.5	
}

histmem mode time
histmem preset 5400
	
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