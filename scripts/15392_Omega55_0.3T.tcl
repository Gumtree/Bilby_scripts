#This script is for Omega = 55. It follows the procedure as the other Omega = 55
#rocking curves. This is to tack on at the end of the other fields.
#Using the tilt centers samchi = 0.07 and som2 = 0.2


clientput drive som2 0.2
drive som2 0.2


set samchi_list {
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


set som2angles {
	0.4
	0.45
	0.5
	0.55
	0.6
	0.65
	0.7
	0.75
	0.8
	0.85
	0.9
	0.95
	1.0
	1.05
	1.1
}


#####
#Magnetic Field of 0.3 T
#Set scan duration
histmem mode time
histmem preset 240

clientput drive ma1_magnet_setpoint 0.3
drive ma1_magnet_setpoint 0.35

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.26
wait 120
ma1_queue send setF 0.33
wait 60	
ma1_queue send setF 0.28
wait 60	
ma1_queue send setF 0.31
wait 60	
ma1_queue send setF 0.3
wait 60	
hset /sample/ma1/magnet/htr_sw 0
wait 35

clientput drive samchi 0.07
drive samchi 0.07
foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}
wait 10

clientput drive som2 0.2
drive som2 0.2
foreach samchi_angle $samchi_list {
    clientput drive samchi $samchi_angle
    drive samchi $samchi_angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}
wait 10
