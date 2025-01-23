#This script is for Omega = 55. It follows the procedure as the other Omega = 55
#rocking curves. This is to tack on at the end of the other fields.
#Using the tilt centers samchi = 0.07 and som2 = 0.2


clientput drive som2 0.3
drive som2 0.3

#Set scan duration
histmem mode time
histmem preset 240


set samchi_list {
	0.15
	0.2
	0.25
	0.3
	0.35
	0.4
	0.45
	0.5
}


set som2angles {
	0.55
	0.6
	0.65
	0.7
	0.75
	0.8
	0.85
	0.9
}


#####
#Magnetic Field of 0.2 T
clientput drive ma1_magnet_setpoint 0.2
drive ma1_magnet_setpoint 0.25

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.16
wait 120
ma1_queue send setF 0.23
wait 60	
ma1_queue send setF 0.18
wait 60	
ma1_queue send setF 0.21
wait 60	
ma1_queue send setF 0.2
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



#####
#Magnetic Field of 0.5 T
clientput drive ma1_magnet_setpoint 0.5
drive ma1_magnet_setpoint 0.55

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.46
wait 120
ma1_queue send setF 0.53
wait 60	
ma1_queue send setF 0.48
wait 60	
ma1_queue send setF 0.51
wait 60	
ma1_queue send setF 0.5
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



#######
#Quick other fields checks


#Center som2 and samchi
clientput drive som2 0.3
drive som2 0.3
clientput drive samchi 0.07
drive samchi 0.07

#Set scan duration
histmem mode time
histmem preset 240

#####
#Magnetic Field of 0.1 T
clientput drive ma1_magnet_setpoint 0.1
drive ma1_magnet_setpoint 0.15

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.06
wait 120
ma1_queue send setF 0.13
wait 60	
ma1_queue send setF 0.08
wait 60	
ma1_queue send setF 0.11
wait 60	
ma1_queue send setF 0.1
wait 60	
hset /sample/ma1/magnet/htr_sw 0
wait 35

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

###

#Rock on samchi
clientput drive samchi 0.35
drive samchi 0.35

#Change Scan Duration
histmem mode time
histmem preset 600

#Change Magnetic field to 1.1 T
clientput drive ma1_magnet_setpoint 1.1
drive ma1_magnet_setpoint 1.15

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 1.06
wait 120
ma1_queue send setF 1.13
wait 60	
ma1_queue send setF 1.08
wait 60	
ma1_queue send setF 1.11
wait 60	
ma1_queue send setF 1.1
wait 60	
hset /sample/ma1/magnet/htr_sw 0
wait 35

#Scan
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}



