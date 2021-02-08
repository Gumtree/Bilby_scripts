# 19.03.2020 night scan for FeCoSi x=0.15
#
# 1. HFC field scans for the B||n||110 direction
#
# Temperatures
set tempArr {
  23
  21
  19
  17
  15	
  13
  11
  9
  7
  5
  3
}
# Field 0.1 is duplicated in case the magnet didn't set it in time
set fieldArr {
  0.15
  0.10
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
#
# Set the desired temperature
clientput drive tc1_driveable 35
drive tc1_driveable 35   
# Switch the magnet heater ON
hset /sample/ma1/magnet/htr_sw 1
wait 35
#
foreach temp $tempArr {
	# Prepare the HFC state
	clientput drive ma1_magnet_setpoint 0.2
	ma1_queue send setF 0.2
	clientput drive ma1_magnet_setpoint 0.15
	ma1_queue send setF 0.15
	# Set the desired temperature
	clientput drive tc1_driveable $temp
	drive tc1_driveable $temp           
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
}
# Switch the magnet heater OFF
hset /sample/ma1/magnet/htr_sw 0
wait 35
#
# 2. Temperature sweep ZFC
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