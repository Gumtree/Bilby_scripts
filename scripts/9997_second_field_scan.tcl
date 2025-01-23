# warm up to 60 then cool in -2T field

# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 10
drive tc1_pres8_setpoint 10 
# depeds from where started

# Sample area VTI
clientput run tc1_temp0_setpoint 60.0
run tc1_temp0_setpoint 60.0

# Sample sensor
clientput drive tc2_temp0_setpoint 60.0
drive tc2_temp0_setpoint 60.0


clientput drive ma1_magnet_setpoint -2
drive ma1_magnet_setpoint -2

# Quick check of background.
histmem mode time
histmem preset 900

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 10
drive tc1_pres8_setpoint 10

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
histmem preset 3600

set field {
  -2.0
  -1.1
  -1.0
  -0.9
  -0.8
  -0.7
  -0.6
  -0.5
  -0.4
  -0.3
  -0.2
  -0.1
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
  2.0
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