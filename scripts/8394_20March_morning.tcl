# 20.03.2020 morning script for FeCoSi x=0.15
#
# 1. Fine-spaced field scan at 21 K (ZFC - HFC)
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
set temp 21
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
# In order to avoid overshooting, first cool down to slightly higher temperature that desired
set tempPrelim [expr {1+$temp}]
clientput drive tc1_driveable $tempPrelim
drive tc1_driveable $tempPrelim 
# Set the desired temperature
clientput drive tc1_driveable $temp
drive tc1_driveable $temp  
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
#
# 2. Background measurements - make at 35 K
#
# Counting time
histmem mode time
histmem preset 600
# Set field to zero
clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0
# Go to high temperatures
clientput drive tc1_driveable 35
drive tc1_driveable 35
# Count and save to file
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}
#