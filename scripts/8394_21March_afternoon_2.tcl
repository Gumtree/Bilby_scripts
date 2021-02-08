# 21.03.2020 Continue the night scan for FeCoSi x=0.15 for the B||100_|_n||110 direction
#
# 1. ZFC - HFC field scans
#
# Temperatures
set tempArr {
  5
  3
}
# Fields
set fieldArr {
  0.00
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
  0.20
  0.15
  0.10
  0.09
  0.08
  0.07
  0.06
  0.05
  0.04
  0.03
  0.02
  0.01
  0.00
}
# Counting time
histmem mode time
histmem preset 120
# The 7K ZFC state is already prepared - just measure a field scan there
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
# Measure the rest of the temperatures normally
foreach temp $tempArr {
	# Prepare the ZFC state
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
	#
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
# 2. Temperature sweep at different fields 
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
}
set fieldArr {
  0
  20
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