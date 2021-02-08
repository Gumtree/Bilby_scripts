# 20 Aug 2020 long scan

hset /sample/tc1/heater/heaterRange 4

histmem mode time
histmem preset 7200

# field
set fieldArr {
 -1.5
 }

# msom
set msomArr {
  0.35
}

foreach field $fieldArr {
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
histmem preset 14400

# field
set fieldArr {
 1.0
 }

# msom
set msomArr {
  0.35
}

foreach field $fieldArr {
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

# field
set fieldArr {
  1.0
 }

# msom
set msomArr {
  0.35
}

foreach field $fieldArr {
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
set fieldArr {
  1.0
 }

# msom
set msomArr {
  0.35
}

foreach field $fieldArr {
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