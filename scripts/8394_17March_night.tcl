# 17.03.2020 night script for BT mapping FeCoSi x=0.15
# Measure ZFC field sweeps at a set of temperatures
#
# Fields
set fieldArr {
  0
  0.01
  0.02
  0.03
  0.04
  0.05
  0.06
  0.07
  0.08
  0.09
  0.10
  0.15
}
# Temperatures - which we want to measure
set tempArr {
  21
  17
  13	
  9
  5
}
#
# Counting time
histmem mode time
histmem preset 120
#
# For each field scan, need to set up ZFC state
# To do that, first go to 35 K and the cool down in 0 T
foreach temp $tempArr {
	# Go to high temperatures
	clientput drive tc1_driveable 35
	drive tc1_driveable 35
	# Set field to zero
	clientput drive ma1_magnet_setpoint 0
	drive ma1_magnet_setpoint 0
	# In order to avoid overshooting, first cool down to slightly higher temperature that desired
	set tempPrelim [expr {1+$temp}]
	clientput drive tc1_driveable $tempPrelim
	drive tc1_driveable $tempPrelim 
	# Set the desired temperature
	clientput drive tc1_driveable $temp
	drive tc1_driveable $temp           
	foreach field $fieldArr {
		# Set field
		clientput drive ma1_magnet_setpoint $field
		drive ma1_magnet_setpoint $field
		# Count and save to file
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
		#
	}
}
#
