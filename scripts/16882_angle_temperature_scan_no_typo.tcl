# alignment

histmem mode time
histmem preset 9000


# saturation field at 100K

clientput drive tc1_driveable 100.0
drive tc1_driveable 100.0

clientput drive ma1_magnet_setpoint 2.0
drive ma1_magnet_setpoint 2.0

set rotation {
	82.1
	82.9
}

foreach angle $rotation {
	clientput drive som2 $angle
	drive som2 $angle
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}