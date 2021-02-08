set fields1 {
0.3
0.4
0.5
0.6
0.7
0.8
0.9
}

set som2angles {

-0.25
-0.3
-0.35	
-0.4
-0.45
-0.5	
-0.55	
-0.6
-0.65
-0.7
-0.75
-0.8
-0.85
-0.9
}

histmem mode time
histmem preset 300



clientput drive ma1_magnet_setpoint 0.35
drive ma1_magnet_setpoint 0.35

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.26
wait 60	
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

	foreach som2angle $som2angles {
		clientput drive som2 $som2angle
		drive som2 $som2angle  
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
	}

	
	
clientput drive ma1_magnet_setpoint 0.45
drive ma1_magnet_setpoint 0.45

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.36
wait 60	
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

	foreach som2angle $som2angles {
		clientput drive som2 $som2angle
		drive som2 $som2angle  
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
	}


clientput drive ma1_magnet_setpoint 0.55
drive ma1_magnet_setpoint 0.55

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.46
wait 60	
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

	foreach som2angle $som2angles {
		clientput drive som2 $som2angle
		drive som2 $som2angle  
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
	}
	
	
clientput drive ma1_magnet_setpoint 0.65
drive ma1_magnet_setpoint 0.65

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.56
wait 60	
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

	foreach som2angle $som2angles {
		clientput drive som2 $som2angle
		drive som2 $som2angle  
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
	}
	

clientput drive ma1_magnet_setpoint 0.75
drive ma1_magnet_setpoint 0.75

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.66
wait 60	
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

	foreach som2angle $som2angles {
		clientput drive som2 $som2angle
		drive som2 $som2angle  
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
	}

clientput drive ma1_magnet_setpoint 0.85
drive ma1_magnet_setpoint 0.85

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.76
wait 60	
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

	foreach som2angle $som2angles {
		clientput drive som2 $som2angle
		drive som2 $som2angle  
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
	}

clientput drive ma1_magnet_setpoint 0.95
drive ma1_magnet_setpoint 0.95

hset /sample/ma1/magnet/htr_sw 1
wait 35
ma1_queue send setF 0.86
wait 60	
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

	foreach som2angle $som2angles {
		clientput drive som2 $som2angle
		drive som2 $som2angle  
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
	}

	