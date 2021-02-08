# 18 Aug 2020 long scan

hset /sample/tc1/heater/heaterRange 4

histmem mode time
histmem preset 7200

# field
set fieldArr {
 -1.5
 0.55
 0.575
 0.6
 0.625
 0.65
 0.675	
 0.7
 0.725
 0.75
 0.775
}

# msom
set msomArr {
  -0.25
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