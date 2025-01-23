#########################
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
############################

#clientput drive som2 0.3
#drive som2 0.3

#clientput drive samchi 0.4
#drive samchi 0.4


#############################
histmem mode time
histmem preset 600

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}
#############################