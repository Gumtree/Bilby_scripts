# 16.03.2020 night script for BT mapping FeCoSi x=0.15
# Measure HFC field sweeps at a set of temperatures
# 17.03.2020. Corrected. Wrong field values (shall be T, not mT). Persistent mode is not needed for one field value.

# Fields
set fieldArr {
  0.17
  0.16
  0.15
  0.14
  0.13
  0.12
  0.11
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
  0
}
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

# Counting time
histmem mode time
histmem preset 120
#
# Set temperature above Tc
clientput drive tc1_driveable 35
drive tc1_driveable 35
#
foreach temp $tempArr {
	# Set saturation field - persistent mode
	# Assume 0.2 to be enough
	clientput drive ma1_magnet_setpoint 0.2
	drive ma1_magnet_setpoint 0.2
	# Set temperature
	clientput drive tc1_driveable $temp
	drive tc1_driveable $temp           
	#
	foreach field $fieldArr {
		clientput drive ma1_magnet_setpoint $field
		drive ma1_magnet_setpoint $field
		# Set field - DRIVING mode - you do NOT need it for one field value
		   #hset /sample/ma1/magnet/htr_sw 1 # going to persistent mode
		   #wait 35                          # let is happened
		   #ma1_queue send setF $field       # set up a field - and here you are setting up only one
		   #wait 120                         # what is this for? to equilibrate?  not needed
		   #hset /sample/ma1/magnet/htr_sw 0 # going out of the persistent mode
		   #wait 35                          # let is happened
		# Count and save to file
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
		#
	}
}
# Set the magnet into the persistent mode
clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0
