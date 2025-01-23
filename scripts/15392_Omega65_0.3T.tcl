#This script is for Omega = 65.

histmem mode time
histmem preset 240

set samchi_list {
	0.2
	0.25
	0.3
	0.35
	0.4
	0.45
	0.5
	0.55
	0.6
}


set som2angles {
	0.5
	0.55
	0.6
	0.65
	0.7
	0.75
}

clientput drive ma1_magnet_setpoint 0.4
drive ma1_magnet_setpoint 0.45

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.36
wait 120
ma1_queue send setF 0.43
wait 60	
ma1_queue send setF 0.38
wait 60	
ma1_queue send setF 0.41
wait 60	
ma1_queue send setF 0.4
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

clientput drive som2 0.3
drive som2 0.3
foreach samchi_angle $samchi_list {
    clientput drive samchi $samchi_angle
    drive samchi $samchi_angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}
wait 10


