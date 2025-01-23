# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 2
drive tc1_pres8_setpoint 2

# Sample area VTI
clientput run tc1_temp0_setpoint 60.0
run tc1_temp0_setpoint 60.0

# Sample sensor
clientput drive tc2_temp0_setpoint 60.0
drive tc2_temp0_setpoint 60.0

# Field to -1.5
clientput drive ma1_magnet_setpoint -1.5
drive ma1_magnet_setpoint -1.5

# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 10
drive tc1_pres8_setpoint 10

clientput run tc1_temp0_setpoint 2.0
run tc1_temp0_setpoint 2.0

# Sample sensor
clientput drive tc2_temp0_setpoint 2.0
drive tc2_temp0_setpoint 2.0

# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 3.5
drive tc1_pres8_setpoint 3.5

histmem mode time
histmem preset 7200

# Collecting data at -1.5T
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}


set field {
  -0.5
  -0.3	
  0.0
  0.15
  0.3
  0.4
  0.5
  1.0
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

