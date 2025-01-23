histmem mode time
histmem preset 120


#clientput drive ma1_magnet_setpoint 0.5
#drive ma1_magnet_setpoint 0.5


#clientput drive tc1_driveable 2.5
#drive tc1_driveable 2.5


foreach som2angle $som2angle_list {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    foreach field $fields_list {
        clientput drive ma1_magnet_setpoint $field
        drive ma1_magnet_setpoint $field	
	newfile HISTOGRAM_XYT
        histmem start block
        histmem stop
        catch {save}
    }	    
}


