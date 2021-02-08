# 22.03.2020 The night scan for FeCoSi x=0.15 for the B||n||100 direction
#
# 1. Rocking scans
#
# Counting time
histmem mode time
histmem preset 120
# Define the rocking angles sequence
set omegaArr {
  -10
  -9
  -8
  -7
  -6
  -5
  -4
  -3
  -2
  -1
  0
  1
  2
  3
  4
  5
  6
  7
  8
  9
  10
}
# 19 K 30 mT (HFC) 
set temp 19
set field 0.03
# Prepare the HFC state
clientput drive ma1_magnet_setpoint 0.2
drive ma1_magnet_setpoint 0.2
# Set the desired temperature
clientput drive tc1_driveable $temp
drive tc1_driveable $temp
# Set the field
clientput drive ma1_magnet_setpoint $field
drive ma1_magnet_setpoint $field
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
# 13 K 30 mT (HFC) 
set temp 13
set field 0.03
# Prepare the HFC state
clientput drive ma1_magnet_setpoint 0.2
drive ma1_magnet_setpoint 0.2
# Set the desired temperature
clientput drive tc1_driveable $temp
drive tc1_driveable $temp
# Set the field
clientput drive ma1_magnet_setpoint $field
drive ma1_magnet_setpoint $field
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