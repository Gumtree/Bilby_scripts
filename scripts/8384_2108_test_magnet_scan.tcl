# 21 Aug 2020

# Counting time
histmem mode time
histmem preset 900

# field
set fieldArr {
  -1.5
  0
}


foreach field $fieldArr {
	clientput ma1_magnet_setpoint field $field
	drive ma1_magnet_setpoint $field
	
	# Count and save to file
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}