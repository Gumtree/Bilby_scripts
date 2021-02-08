# 14 Aug 2020 reflection search

# samx
set samxArr {
   -1
   0
   1
   2
   3
   4
}
# msom
set msomArr {
  0	
  1
  1.5
  2
  2.5
  3
  3.5
  4
}

# Counting time
histmem mode time
histmem preset 200
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