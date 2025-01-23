# warm up to 60 then cool in -2T field

# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 2
drive tc1_pres8_setpoint 2
# depeds from where started

# Sample area VTI
clientput run tc1_temp0_setpoint 50.0
run tc1_temp0_setpoint 50.0

# Sample sensor
clientput drive tc2_temp0_setpoint 50.0
drive tc2_temp0_setpoint 50.0

clientput drive ma1_magnet_setpoint -2
drive ma1_magnet_setpoint -2


# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 12
drive tc1_pres8_setpoint 12

# Sample area VTI
clientput run tc1_temp0_setpoint 1.5
run tc1_temp0_setpoint 1.5

# Sample sensor
clientput drive tc2_temp0_setpoint 1.5
drive tc2_temp0_setpoint 1.5

# He pressure somewhere around the sample: return to average
clientput drive tc1_pres8_setpoint 5
drive tc1_pres8_setpoint 5

histmem mode time
histmem preset 1800


set field {
  -2.0
  -1.1
}

	
foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

histmem mode time
histmem preset 2700


set field {
  0.0
  1.1
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