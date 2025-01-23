#This script is for Omega = 55. It repeats tilt scan ranges from March 2022.
#Using the new tilt center (samchi = 0.07) but rocking on to the bottom peaks

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
#Magnetic Field of 0.6 T
#Set scan duration
histmem mode time
histmem preset 240

clientput drive ma1_magnet_setpoint 0.6
drive ma1_magnet_setpoint 0.65

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.56
wait 120
ma1_queue send setF 0.63
wait 60	
ma1_queue send setF 0.58
wait 60	
ma1_queue send setF 0.61
wait 60	
ma1_queue send setF 0.6
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

#####
#Magnetic Field of 0.7 T
#Set scan duration
histmem mode time
histmem preset 300

clientput drive ma1_magnet_setpoint 0.7
drive ma1_magnet_setpoint 0.75

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.66
wait 120
ma1_queue send setF 0.73
wait 60	
ma1_queue send setF 0.68
wait 60	
ma1_queue send setF 0.71
wait 60	
ma1_queue send setF 0.7
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



#####
#Magnetic Field of 0.8 T
#Set scan duration
histmem mode time
histmem preset 600

clientput drive ma1_magnet_setpoint 0.8
drive ma1_magnet_setpoint 0.85

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.76
wait 120
ma1_queue send setF 0.83
wait 60	
ma1_queue send setF 0.78
wait 60	
ma1_queue send setF 0.81
wait 60	
ma1_queue send setF 0.8
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
