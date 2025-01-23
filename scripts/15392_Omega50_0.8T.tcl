#This script is for Omega = 50. We are looking for the third peak



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

histmem mode time
histmem preset 600



newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}