# 22.03.2020 Continuation of the night scan for FeCoSi x=0.15 for the B||110_|_n||100 direction
#
# 1. HFC field scans
#
# Temperatures
set tempArr {
  9
  5
  3
}
# Fields
set fieldArr {
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
# 
foreach temp $tempArr {
    # Prepare the HFC state
    # Set field to saturation
    clientput drive ma1_magnet_setpoint 0.2
    drive ma1_magnet_setpoint 0.2
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
