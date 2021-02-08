# 14 Aug 2020 reflection search

# samx
set samxArr {
  -5	
  -4
  -3
  -2
  -1	
}
# msom
set msomArr {
  1
  2
  2.5
  3
  3.5
  4
  4.5	
  5	
}

# Counting time
histmem mode time
histmem preset 120
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