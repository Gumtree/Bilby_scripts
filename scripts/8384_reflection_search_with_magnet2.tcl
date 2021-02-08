# 15 Aug 2020 reflection search with magnet

#magnet field done

# Counting time
histmem mode time
histmem preset 300

# field
set fieldArr {
   0.2
   0.4
   0.6
   0.8
}

# samx
set samxArr {
   -2
   -1
   0
   1
   2
}
# msom
set msomArr {
  -1
  -0.5	
  0	
  1
  1.5
  2
  2.5
  3
}

foreach field $fieldArr {
	clientput ma1_magnet_setpoint field $field
	drive ma1_magnet_setpoint $field
    foreach samx $samxArr {
            clientput drive samx $samx
            drive samx $samx	
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
}