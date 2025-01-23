histmem mode time
histmem preset 60


#clientput drive ma1_magnet_setpoint 2.0
#drive ma1_magnet_setpoint 2.0

#clientput drive tc1_driveable2 2.0
#drive tc1_driveable2 2.0

#clientput drive tc1_driveable 50
#drive tc1_driveable 50

clientput drive samchi 0.0
drive samchi 0.0


set samchiangles_list {
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
	0
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
}

foreach samchiangles $samchiangles_list {
    clientput drive samchi $samchiangles
    drive samchi $samchiangles	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

clientput drive som2 0.12
drive som2 0.12
