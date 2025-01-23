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

#############################
histmem mode time
histmem preset 240

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}
#############################