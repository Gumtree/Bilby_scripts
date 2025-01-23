histmem mode time
histmem preset 60


#clientput drive ma1_magnet_setpoint 2.0
#drive ma1_magnet_setpoint 2.0

#clientput drive tc1_driveable2 2.0
#drive tc1_driveable2 2.0

#clientput drive tc1_driveable 50
#drive tc1_driveable 50

clientput drive samchi 0.07
drive samchi 0.07


set som2angles {
	-0.5
	-0.45
	-0.4
	-0.35
	-0.3
	-0.25
	-0.2
	-0.15
	-0.1
	-0.05
	0
	0.05
	0.1
	0.15
	0.2
	0.25
	0.3
	0.35
	0.4
	0.45
	0.5
	0.55
	0.6
	0.65
	0.7
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

clientput drive som2 0.12
drive som2 0.12
