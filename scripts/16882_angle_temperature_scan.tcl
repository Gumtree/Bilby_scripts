# Temperature angle scan and then - saturation - final

histmem mode time
histmem preset 10800

clientput drive tc1_driveable 34.0
drive tc1_driveable 34.0

clientput drive ma1_magnet_setpoint 0.044
drive ma1_magnet_setpoint 0.044

# 1.05deg NS SANS regime and then reduce the angle (rotate in +) by 0.8 Q specular 0.046
set rotation {
	83.25
	84.05
}

foreach angle $rotation {
	clientput drive som2 $angle
	drive som2 $angle
        newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}


# change T
clientput drive tc1_driveable 100.0
drive tc1_driveable 100.0

# 1.05deg NS SANS regime and then reduce the angle (rotate in +) by 0.8
set rotation {
	83.25
	84.05
}

foreach angle $rotation {
	clientput drive som2 $angle
	drive som2 $angle
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

# saturation field at 100K

clientput drive ma1_magnet_setpoint 2.0
drive ma1_magnet_setpoint 2.0

set rotation {
	83.25
	84.05
}

foreach angle $rotation {
	clientput drive som2 $angle
	drive som2 $angle
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}