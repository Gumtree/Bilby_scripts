# 22.03.2020 midday script for FeCoSi x=0.15
#
# Define the rocking angles sequence
set omegaArr {
  -10
  -8
  -6
  -4
  -2
  0
  2
  4
  6
  8
  10
}
# Counting time
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
# MOVE THE STAGE BACK TO -10
clientput drive som2 -10
drive som2 -10