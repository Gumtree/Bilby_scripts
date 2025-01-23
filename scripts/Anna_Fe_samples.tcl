# last scan

histmem mode time
histmem preset 600

#aperture D2.5


# prep for cooling
#hset /sample/tc1/heater/heaterRange_1 1

#clientput drive tc2_pres3_setpoint 7.0
#drive tc2_pres3_setpoint 7.0

#clientput drive tc1_driveable 10.0
#drive tc1_driveable 10.0

# settings back
#hset /sample/tc1/heater/heaterRange_1 1

#clientput drive tc2_pres3_setpoint 3.0
#drive tc2_pres3_setpoint 3.0

# field
#clientput drive ma1_magnet_setpoint 1.0
#drive ma1_magnet_setpoint 1.0

set field {
-1.0
-0.5
0.0
0.5	
1.0	
}

foreach field_value $field {
	clientput drive ma1_magnet_setpoint $field_value
	drive ma1_magnet_setpoint $field_value
	
        newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive ma1_magnet_setpoint 0.0
drive ma1_magnet_setpoint 0.0

