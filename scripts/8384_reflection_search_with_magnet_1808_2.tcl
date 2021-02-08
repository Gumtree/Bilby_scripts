# 15 Aug 2020 reflection search with magnet

histmem mode time
histmem preset 600

hset /sample/tc1/heater/heaterRange 4

# field
set fieldArr {
 1.5
 0.6
 0.4
 0.2
 0.1
 0
}

# msom
set msomArr {
  -0.4
  -0.32
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