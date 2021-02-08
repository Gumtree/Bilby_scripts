# 16.03.2020 night script for BT mapping FeCoSi x=0.15
# Measure HFC field sweeps at a set of temperatures
#
# Fields
set fieldArr {
  170
  160
  150
  140
  130
  120
  110
  100
  90
  80
  70
  60
  50
  40
  30
  20
  10
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
		# Set field - DRIVING mode
		hset /sample/ma1/magnet/htr_sw 1
		wait 35
		ma1_queue send setF $field
		wait 120
		hset /sample/ma1/magnet/htr_sw 0
		wait 35
		# Count and save to file
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
		#
	}
}
# Set the magnet into the persistend mode
clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0
