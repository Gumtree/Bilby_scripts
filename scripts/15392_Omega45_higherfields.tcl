#This script is for Omega = 45. We are looking for the elusive third peak
#that we saw at 0.8 T so now I am starting with just Tilt RCs and then when
#we find the peaks, do Rotation RCs

#Som2 Center for Omega = 45
clientput drive som2 0.3
drive som2 0.3

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
#Magnetic Field of 0.9 T
#Set scan duration
histmem mode time
histmem preset 600

clientput drive ma1_magnet_setpoint 0.9
drive ma1_magnet_setpoint 0.95

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.86
wait 120
ma1_queue send setF 0.93
wait 60	
ma1_queue send setF 0.88
wait 60	
ma1_queue send setF 0.91
wait 60	
ma1_queue send setF 0.9
wait 60	
hset /sample/ma1/magnet/htr_sw 0
wait 35



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


foreach samchi_angle $samchi_list {
    clientput drive samchi $samchi_angle
    drive samchi $samchi_angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}
wait 10
