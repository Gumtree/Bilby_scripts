
histmem mode time
histmem preset 900

drive som2 -1
drive samchi 0.4

clientput drive ma1_magnet_setpoint 0.35
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

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}






drive samchi 0.45
clientput drive ma1_magnet_setpoint 0.45
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

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}





drive samchi 0.5
clientput drive ma1_magnet_setpoint 0.55
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

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

histmem mode time
histmem preset 1200


drive samchi 0.5	
clientput drive ma1_magnet_setpoint 0.65
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

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}




histmem mode time
histmem preset 1800

drive samchi 0.55
clientput drive ma1_magnet_setpoint 0.75
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

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

histmem mode time
histmem preset 2100


drive samchi 0.55
clientput drive ma1_magnet_setpoint 0.85
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

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}




histmem mode time
histmem preset 2400

drive samchi 0.6
drive som2 -1.1
clientput drive ma1_magnet_setpoint 0.95
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

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}



histmem mode time
histmem preset 3600

drive samchi 0.6
clientput drive ma1_magnet_setpoint 1.05
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
ma1_queue send setF 1
wait 60	
hset /sample/ma1/magnet/htr_sw 0
wait 35

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}



drive samchi 0.6
clientput drive ma1_magnet_setpoint 1.25
drive ma1_magnet_setpoint 1.25

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 1.16
wait 120	
ma1_queue send setF 1.23
wait 60	
ma1_queue send setF 1.18
wait 60	
ma1_queue send setF 1.21
wait 60	
ma1_queue send setF 1.2
wait 60	
hset /sample/ma1/magnet/htr_sw 0
wait 35

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}







