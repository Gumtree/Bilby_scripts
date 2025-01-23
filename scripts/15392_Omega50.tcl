#This script is for Omega = 50. We are looking for the third peak



#clientput drive ma1_magnet_setpoint 0.7
#drive ma1_magnet_setpoint 0.75


#hset /sample/ma1/magnet/htr_sw 1
#wait 35
#ma1_queue send setF 0.66
#wait 120
#ma1_queue send setF 0.73
wait 60	
ma1_queue send setF 0.68
wait 60	
ma1_queue send setF 0.71
wait 60	
ma1_queue send setF 0.7
wait 60	
hset /sample/ma1/magnet/htr_sw 0
wait 35

histmem mode time
histmem preset 420



newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}