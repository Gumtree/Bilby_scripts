histmem mode time
histmem preset 10


#clientput drive ma1_magnet_setpoint 0.5
#drive ma1_magnet_setpoint 0.5


#clientput drive tc1_driveable 2.5
#drive tc1_driveable 2.5

set som2angle_list {
	1.0
}

set samchi_list {
	0.0
	0.05
}


foreach som2angle $som2angle_list {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    foreach samchi $samchi_list {
        clientput drive samchi $samchi
        drive samchi $samchi	
	newfile HISTOGRAM_XYT
        histmem start block
        histmem stop
        catch {save}
    }	    
}

clientput drive som2 0.0
drive som2 0.0

clientput drive samchi 0.0
drive samchi 0.0
