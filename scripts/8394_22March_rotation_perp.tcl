# 22.03.2020 midday script for FeCoSi x=0.15
#
# Define the rocking angles sequence
set omegaArr {
  85
  86
  88
  89
  90
  91
  92
  93
  94
  95
}
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