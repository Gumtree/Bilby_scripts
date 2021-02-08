# Define the rocking angles sequence
set omegaArr {
  89.5
  90.5
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
#
# MOVE THE STAGE BACK TO ZERO
clientput drive som2 90
drive som2 90