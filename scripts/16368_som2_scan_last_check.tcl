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

set rotation {
89.5
90.5	
}

# 1T - already there
foreach angle $rotation {
	clientput drive som2 $angle
	drive som2 $angle
        newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive ma1_magnet_setpoint 7.0
drive ma1_magnet_setpoint 7.0

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
#clientput drive ma1_magnet_setpoint 1.0
#drive ma1_magnet_setpoint 1.0

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

hset /sample/tc1/heater/heaterRange_1 3

clientput drive tc2_pres3_setpoint 0.0
drive tc2_pres3_setpoint 0.0

clientput drive ma1_magnet_setpoint 0.0
drive ma1_magnet_setpoint 0.0

clientput drive tc1_driveable 50.0
drive tc1_driveable 50.0

foreach angle $rotation {
	clientput drive som2 $angle
	drive som2 $angle
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

# The end
