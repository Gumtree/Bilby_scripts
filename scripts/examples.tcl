~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ NORMAL temp hset ~~~~~~~~~~~~~~~~~~~~~~~

set ListOftemps {

31.7
31.55
31.4
}

set ListOfMeas {
1
2
}

histmem mode time
histmem preset 150


foreach temp $ListOftemps {
	hset sample/tc1/sensor/setpoint1 $temp
	
	foreach Meas $ListOfMeas {
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}	
		}
}

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ NORMAL field drive temp drive ~~~~~~~~~~~~~~~~~~~~~

set temperature {
  1.6
}

set field {
  0
  0.009
  0.018
}

histmem mode time
histmem preset 80

foreach temp $temperature {
	clientput drive tc1_driveable $temp
	drive tc1_driveable $temp           
	foreach pos $field {
		clientput drive ma1_magnet_setpoint $pos
		drive ma1_magnet_setpoint $pos
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
	}
}

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ WITH NON_PERSISTENT_MODE ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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

hset /sample/ma1/magnet/htr_sw 0
wait 35

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}


~~~~~~~~~~~~~~~~~NORMAL MODE, DIFFERENCEITH BETWEEN TEMP AND FIELD CONTROL~~~~~~~~~~~~~~~~~





