histmem mode time
histmem preset 300

drive samchi 0.07


clientput drive som2 0.34
drive som2 0.34

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


clientput drive som2 0.36
drive som2 0.36

clientput drive ma1_magnet_setpoint 0.4
drive ma1_magnet_setpoint 0.4

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.31
wait 120
ma1_queue send setF 0.38
wait 60	
ma1_queue send setF 0.33
wait 60	
ma1_queue send setF 0.36
wait 60	
ma1_queue send setF 0.35
wait 60	
hset /sample/ma1/magnet/htr_sw 0
wait 35

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}


clientput drive som2 0.38
drive som2 0.38

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


clientput drive som2 0.39
drive som2 0.39

clientput drive ma1_magnet_setpoint 0.5
drive ma1_magnet_setpoint 0.5

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.41
wait 120
ma1_queue send setF 0.48
wait 60	
ma1_queue send setF 0.43
wait 60	
ma1_queue send setF 0.46
wait 60	
ma1_queue send setF 0.45
wait 60	
hset /sample/ma1/magnet/htr_sw 0
wait 35

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}


clientput drive som2 0.41
drive som2 0.41

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
histmem preset 600


clientput drive som2 0.42
drive som2 0.42

clientput drive ma1_magnet_setpoint 0.6
drive ma1_magnet_setpoint 0.6

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.51
wait 120	
ma1_queue send setF 0.58
wait 60	
ma1_queue send setF 0.53
wait 60	
ma1_queue send setF 0.56
wait 60	
ma1_queue send setF 0.55
wait 60	
hset /sample/ma1/magnet/htr_sw 0
wait 35

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}


clientput drive som2 0.43
drive som2 0.43

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


clientput drive som2 0.45
drive som2 0.45

clientput drive ma1_magnet_setpoint 0.7
drive ma1_magnet_setpoint 0.7

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.61
wait 120
ma1_queue send setF 0.68
wait 60	
ma1_queue send setF 0.63
wait 60	
ma1_queue send setF 0.66
wait 60	
ma1_queue send setF 0.65
wait 60	
hset /sample/ma1/magnet/htr_sw 0
wait 35

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}



clientput drive som2 0.46
drive som2 0.46

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
histmem preset 900


clientput drive som2 0.47
drive som2 0.47

clientput drive ma1_magnet_setpoint 0.8
drive ma1_magnet_setpoint 0.8

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.71
wait 120
ma1_queue send setF 0.78
wait 60	
ma1_queue send setF 0.73
wait 60	
ma1_queue send setF 0.76
wait 60	
ma1_queue send setF 0.75
wait 60	
hset /sample/ma1/magnet/htr_sw 0
wait 35

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}


clientput drive som2 0.48
drive som2 0.48

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


clientput drive som2 0.49
drive som2 0.49

clientput drive ma1_magnet_setpoint 0.9
drive ma1_magnet_setpoint 0.9

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.81
wait 120
ma1_queue send setF 0.88
wait 60	
ma1_queue send setF 0.83
wait 60	
ma1_queue send setF 0.86
wait 60	
ma1_queue send setF 0.85
wait 60	
hset /sample/ma1/magnet/htr_sw 0
wait 35

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}


clientput drive som2 0.51
drive som2 0.51

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
histmem preset 1200


clientput drive som2 0.52
drive som2 0.52

clientput drive ma1_magnet_setpoint 1
drive ma1_magnet_setpoint 1

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.91
wait 120	
ma1_queue send setF 0.98
wait 60	
ma1_queue send setF 0.93
wait 60	
ma1_queue send setF 0.96
wait 60	
ma1_queue send setF 0.95
wait 60	
hset /sample/ma1/magnet/htr_sw 0
wait 35

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}


histmem mode time
histmem preset 1500


clientput drive som2 0.53
drive som2 0.53

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


clientput drive som2 0.54
drive som2 0.54

clientput drive ma1_magnet_setpoint 1.1
drive ma1_magnet_setpoint 1.1

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 1.01
wait 120	
ma1_queue send setF 1.08
wait 60	
ma1_queue send setF 1.03
wait 60	
ma1_queue send setF 1.06
wait 60	
ma1_queue send setF 1.05
wait 60	
hset /sample/ma1/magnet/htr_sw 0
wait 35

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}


clientput drive som2 0.55
drive som2 0.55

clientput drive ma1_magnet_setpoint 1.15
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

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}



