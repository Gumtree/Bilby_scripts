# 15 Aug 2020 reflection search with magnet

histmem mode time
histmem preset 1800

hset /sample/tc1/heater/heaterRange 4

# field
set fieldArr {
 -1.5
 -1.4
 -1.3
 -1.2
 -1.1
 -1.0
 -0.9
 -0.8
 -0.7
 -0.6
 -0.5
 -0.4
 -0.3
 -0.2
 -0.1
 0
 0.1
 0.2
 0.3
 0.4
 0.5
 0.6
 0.7	
 0.8
 0.9
 1.0
 1.1
 1.2
 1.3
 1.4	
 1.5
}

# msom
set msomArr {
  -0.12
  -0.1
  -0.08
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