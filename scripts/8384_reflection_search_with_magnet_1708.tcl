# 15 Aug 2020 reflection search with magnet

histmem mode time
histmem preset 600

hset /sample/tc1/heater/heaterRange 4

# field
set fieldArr {
 -1.5	
 -0.4
 0.4
}

# msom
set msomArr {
  -2
  -1.5
  -1.25
  -1
  -0.75
  -0.5
  -0.25	
  0
  0.25	
  0.5
  0.75
  1
  1.25
  1.5
  2
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