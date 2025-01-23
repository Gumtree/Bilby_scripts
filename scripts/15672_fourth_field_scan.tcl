# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 2
drive tc1_pres8_setpoint 2

# Sample area VTI
clientput run tc1_temp0_setpoint 60.0
run tc1_temp0_setpoint 60.0

# Sample sensor
clientput drive tc2_temp0_setpoint 60.0
drive tc2_temp0_setpoint 60.0

# Field to -1.5T
clientput drive ma1_magnet_setpoint -1.5
drive ma1_magnet_setpoint -1.5

histmem mode time
histmem preset 3600

# Collecting data at 60K, 0T for 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

# Cooling in the field

# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 12
drive tc1_pres8_setpoint 12

clientput run tc1_temp0_setpoint 2.0
run tc1_temp0_setpoint 2.0

# Sample sensor
clientput drive tc2_temp0_setpoint 2.0
drive tc2_temp0_setpoint 2.0

# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 3.5
drive tc1_pres8_setpoint 3.5

# Field to -1.5T staying at 2K
clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0


histmem mode time
histmem preset 1800

set msomangles { ----WRONG
  96.0
  95.9
  95.8
  95.7	
}

foreach msomangle $som2angles {
    clientput drive msom $som2angle
    drive msom $som2angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}


clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0

