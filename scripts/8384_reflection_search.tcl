# 14 Aug 2020 reflection search

# samx
set samxArr {
  -3.3
  -2.8
  -2.3
  -1.8
  -1.3
  -0.8
  0
  0.5
}
# msom
set msomArr {
  -4.5
  -4
  -3.5
  -3
  -2.4
  -2
  -1.5	
  -1
  -0.7
  -0.3
  0
  0.5	
  1.0
  1.5
  2.0
  3.0
}

# Counting time
histmem mode time
histmem preset 300
#

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