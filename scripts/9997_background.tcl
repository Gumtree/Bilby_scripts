#clientput drive ma1_magnet_setpoint 0
#drive ma1_magnet_setpoint 0

set temperature {
  60.0
}

histmem mode time
histmem preset 600

#clientput drive tc1_temp0_setpoint $temp
#drive tc1_temp0_setpoint $temp

clientput run tc2_temp0_setpoint $temp
run tc2_temp0_setpoint $temp

foreach temp $temperature {
	clientput drive tc1_temp0_setpoint $temp
	drive tc1_temp0_setpoint $temp
        newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

histmem mode time
histmem preset 5400

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}