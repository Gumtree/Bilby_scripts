# last scan

histmem mode time
histmem preset 900


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

set rotation {
87
87.2
87.4
87.6
87.8
88
88.2
88.4
88.6
88.8
89
89.2
89.4
89.6
89.8
90
90.2
90.4
90.6
90.8
91
91.2
91.4
91.6
91.8
92
92.2
92.4
92.6
92.8
93	
}


#foreach angle $rotation {
#	clientput drive som2 $angle
#	drive som2 $angle
#        newfile HISTOGRAM_XYT
#	histmem start block
#	histmem stop
#	catch {save}
#}

# warn up to shake off
#clientput drive ma1_magnet_setpoint 0.0
#drive ma1_magnet_setpoint 0.0

#hset /sample/tc1/heater/heaterRange_1 3

#clientput drive tc1_driveable 30.0
#drive tc1_driveable 30.0

# cool again to 2K, 1T
#hset /sample/tc1/heater/heaterRange_1 1

# cooling
#clientput drive tc2_pres3_setpoint 20.0
#drive tc2_pres3_setpoint 20.0

#clientput drive tc1_driveable 2.0
#drive tc1_driveable 2.0

# settings back
#clientput drive tc2_pres3_setpoint 3.0
#drive tc2_pres3_setpoint 3.0

# field
clientput drive ma1_magnet_setpoint 1.0
drive ma1_magnet_setpoint 1.0

# still every second point - time !!

foreach angle $rotation {
	clientput drive som2 $angle
	drive som2 $angle
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

# to complete - later

#hset /sample/tc1/heater/heaterRange_1 3

#clientput drive tc2_pres3_setpoint 0.0
#drive tc2_pres3_setpoint 0.0

#clientput drive ma1_magnet_setpoint 0.0
#drive ma1_magnet_setpoint 0.0

#clientput drive tc1_driveable 300.0
#drive tc1_driveable 300.0

# The end
