# Define the rocking angles sequence
set omegaArr {
  5
  4
  3
  2
  1
  0	
  -1
  -2
  -3
  -4
  -5
}
#
histmem mode time
histmem preset 60
#
foreach omega $omegaArr {
	# Set the rocking angle
	clientput drive som2 $omega
	drive som2 $omega
	# Count and save to file
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	#
}