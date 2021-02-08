# 17 Aug 2020
# magnet field first scan rocking angle = 0

# Counting time
histmem mode time
histmem preset 600

clientput ma1_magnet_setpoint -1.5
drive ma1_magnet_setpoint -1.5

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

# Counting time
histmem mode time
histmem preset 3600

# field
set fieldArr {
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
   0.0	
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


foreach field $fieldArr {
	clientput ma1_magnet_setpoint field $field
	drive ma1_magnet_setpoint $field
	
	# Count and save to file
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}