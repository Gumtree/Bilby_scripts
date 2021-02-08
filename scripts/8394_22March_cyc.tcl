# 22.03.2020 midday script for FeCoSi x=0.15
#
# 1. Field cycling at 13 K, 60 mT (HFC)
#
# Field and temperature
set temp 13
set field 0.06
# Number of DC cycles
set NcycArr {
  0
  1
  3
  7
  10
  15
  30
}
# Counting time
histmem mode time
histmem preset 120
# Prepare the HFC state
clientput drive ma1_magnet_setpoint 0.2
drive ma1_magnet_setpoint 0.2
# Set the desired temperature
clientput drive tc1_driveable $temp
drive tc1_driveable $temp
# Set the field
clientput drive ma1_magnet_setpoint $field
drive ma1_magnet_setpoint $field
# Switch the magnet heater ON
hset /sample/ma1/magnet/htr_sw 1
wait 35
# Do the field cycling
foreach Ncyc $NcycArr {
	# Set up a cycling loop
	while {$Ncyc > 0} {
		# Down
		ma1_queue send setF 0.05
		wait 30
		# Up
		ma1_queue send setF 0.06
		wait 30
		# Counter
		set Ncyc [expr {$Ncyc - 1}]
	}
	#
	# Count and save to file
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	#
}
# Set the field to zero
ma1_queue send setF 0
wait 120
# Switch the magnet heater OFF
hset /sample/ma1/magnet/htr_sw 0
wait 35