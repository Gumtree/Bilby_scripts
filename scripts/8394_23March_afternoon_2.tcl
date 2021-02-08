# 23.03.2020 Repeating some lost scans FeCoSi x=0.15 for the B||n||100 direction
#
# 1. Rocking scans
#
# Counting time
histmem mode time
histmem preset 120
# Define the rocking angles sequence
set omegaArr {
  4
  5
  6
  7
  8
  9
  10
}
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
# 13 K 0 mT (HFC) 
set temp 13
set field 0
# HFC state was already prepared
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
# 2. Field cycling at 19 K 30 mT (HFC)
#
set temp 19
set field 0.03
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
# Set som2 to the assumed center
drive som2 2
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
		ma1_queue send setF 0.03
		wait 15
		# Up
		ma1_queue send setF 0.04
		wait 15
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
#
# 3. Minor hysteresis loops
#
# 13 K (HFC)
set fieldArr {
  0.040
  0.045
  0.040
  0.050
  0.040
  0.055
  0.040
  0.060
  0.040
  0.065
  0.040
  0.070
}
set temp 13
# Prepare the HFC state
clientput drive ma1_magnet_setpoint 0.2
drive ma1_magnet_setpoint 0.2
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
# Set field to zero
clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0
#
# 4. Additional rocking angle scan - in case of time left
#
# 3 K 0 mT (ZFC - HFC) 
set temp 3
# Set the desired temperature
clientput drive tc1_driveable $temp
drive tc1_driveable $temp
# Prepare the HFC state
clientput drive ma1_magnet_setpoint 0.2
drive ma1_magnet_setpoint 0.2
wait 120
#
clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0
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