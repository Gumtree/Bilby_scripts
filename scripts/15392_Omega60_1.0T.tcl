#This script is for Omega = 60. It follows the procedure from Omega = 45 but is
#for 1.0 T and only does a samchi rocking curve
#Using the centers samchi = 0.07 and som2 = 0.2


clientput drive som2 0.2
drive som2 0.2

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
	0.65
}


#####
#Magnetic Field of 1.0 T
#Set scan duration
histmem mode time
histmem preset 900

clientput drive ma1_magnet_setpoint 1.0
drive ma1_magnet_setpoint 1.05

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.96
wait 120
ma1_queue send setF 1.03
wait 60	
ma1_queue send setF 0.98
wait 60	
ma1_queue send setF 1.01
wait 60	
ma1_queue send setF 1.0
wait 60	
hset /sample/ma1/magnet/htr_sw 0
wait 35

clientput drive samchi 0.07
drive samchi 0.07

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
