# 21 Aug 2020 quick scan

hset /sample/tc1/heater/heaterRange 4

histmem mode time
histmem preset 7200

# field
set fieldArr1 {
 -2.0
}

# msom
set msomArr {
  85.95
}

foreach field $fieldArr1 {
	clientput ma1_magnet_setpoint field $field
	drive ma1_magnet_setpoint $field	
    foreach msom $msomArr {
		clientput drive msom $msom
		drive msom $msom
		# Count and save to file
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
	}
}

histmem mode time
histmem preset 10800

# field
set fieldArr2 {
 -0.9
 -0.8
 }

foreach field $fieldArr2 {
	clientput ma1_magnet_setpoint field $field
	drive ma1_magnet_setpoint $field	
    foreach msom $msomArr {
		clientput drive msom $msom
		drive msom $msom
		# Count and save to file
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
	}
}

histmem mode time
histmem preset 7200

# field
set fieldArr3 {
 -0.7
 -0.5
 -0.3
 0.3
 0.5
 0.7
}

foreach field $fieldArr3 {
	clientput ma1_magnet_setpoint field $field
	drive ma1_magnet_setpoint $field	
    foreach msom $msomArr {
		clientput drive msom $msom
		drive msom $msom
		# Count and save to file
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
	}
}


histmem mode time
histmem preset 10800

# field
set fieldArr4 {
 0.8
 0.9
 1.0
 1.1
 1.2	
 }

foreach field $fieldArr4 {
	clientput ma1_magnet_setpoint field $field
	drive ma1_magnet_setpoint $field	
    foreach msom $msomArr {
		clientput drive msom $msom
		drive msom $msom
		# Count and save to file
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
	}
}