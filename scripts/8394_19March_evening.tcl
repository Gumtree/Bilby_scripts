# 19.03.2020 evening-midnight script for FeCoSi x=0.15
#
# 1. Temperature sweeps
#
set tempArr {
  23
  22
  21
  20
  19
  18
  17
  16
  15
  14
  13
  12
  11
  10
  9
  8	
  7
  6
  5
  4
  3
  4
  5
  6
  7
  8
  9
  10
  11
  12
  13
  14
  15
  16
  17
  18
  19
  20
  21
  22
  23
}
set fieldArr {
  0
  0.02
  0.04
  0.06
}
# Counting time
histmem mode time
histmem preset 120
#
# For each field, set a temperature scan 
foreach field $fieldArr {
	# Go to high temperatures
	clientput drive tc1_driveable 35
	drive tc1_driveable 35
	# Set field to desired
	clientput drive ma1_magnet_setpoint $field
	drive ma1_magnet_setpoint $field
	# In order to avoid overshooting, first cool down to slightly higher temperature that desired
	clientput drive tc1_driveable 24
	drive tc1_driveable 24
	foreach temp $tempArr {
		# Set the desired temperature
		clientput drive tc1_driveable $temp
		drive tc1_driveable $temp           
		# Count and save to file
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
		#
	}
}
#
# 2. Fine-spaced field scan at 13 K (ZFC - HFC)
#
# Fields, 0.2 and 0.150 are duplicated in case the magnet didn't set it in time
set fieldArr {
  0
  0.005
  0.015
  0.025
  0.035
  0.045
  0.055
  0.065
  0.075
  0.085
  0.095
  0.105
  0.2
  0.2
  0.105
  0.105
  0.095
  0.085
  0.075
  0.065
  0.055
  0.045
  0.035
  0.025
  0.015
  0.005
}
# Temperature
set temp 13
# Counting time
histmem mode time
histmem preset 120
# We start in ZFC state
# Set field to zero
clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0
# Go to high temperatures
clientput drive tc1_driveable 35
drive tc1_driveable 35
# Set the desired temperature
clientput drive tc1_driveable 14
drive tc1_driveable 14
clientput drive tc1_driveable 13
drive tc1_driveable 13
# Switch the magnet heater ON
hset /sample/ma1/magnet/htr_sw 1
wait 35
#
foreach field $fieldArr {
	# Set field
	clientput drive ma1_magnet_setpoint $field
	ma1_queue send setF $field
	wait 20
	# Count and save to file
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	#
}
# Switch the magnet heater OFF
hset /sample/ma1/magnet/htr_sw 0
wait 35
#
# 3. Rocking angle scan at 21 K, 30 mT (HFC)
#
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
# Counting time
histmem mode time
histmem preset 120
#
# 21 K 30 mT (HFC)
set temp 21
set field 0.03
# Prepare the sate
clientput drive tc1_driveable 21
drive tc1_driveable 21
clientput drive ma1_magnet_setpoint 0.2
drive ma1_magnet_setpoint 0.2
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