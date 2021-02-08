# Define the rocking angles sequence
set omegaArr {
  -5
  -4.5
  -4
  -3.5
  -3
  -2.5
  -2
  -1.5
  -1
  -0.5
  0
  0.5
  1
  1.5
  2
  2.5
  3
  3.5
  4
  4.5
  5
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