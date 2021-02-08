# 18.03.2020 night script for FeCoSi x=0.15
#
# 1. Measure ZFC field sweeps at a set of temperatures
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
  19
  15
  11	
  7
  3
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
# 2. Measure full field hysteresis at 15 K
#
# Fields
set fieldArr {
  0
  -0.01
  -0.02
  -0.03
  -0.04
  -0.05
  -0.06
  -0.07
  -0.08
  -0.09
  -0.10
  -0.15
  -0.10
  -0.09
  -0.08
  -0.07
  -0.06
  -0.05
  -0.04
  -0.03
  -0.02
  -0.01
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
# Temperature
set temp 15
# Counting time
histmem mode time
histmem preset 120
# We start in HFC state, positive fields
# Set field to saturation
clientput drive ma1_magnet_setpoint 0.2
drive ma1_magnet_setpoint 0.2
# Set the desired temperature
clientput drive tc1_driveable $temp
drive tc1_driveable $temp
# Field scan - start from 0T (since the first part has been already measured)
clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0
# Switch the magnet heater ON
hset /sample/ma1/magnet/htr_sw 1
wait 35
#
foreach field $fieldArr {
	# Set field
	ma1_queue send setF $field
	wait 30
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
# 3. 12-fold pattern at 21 K 30 mT (ZFC) - More counting
#
# Counting time
histmem mode time
histmem preset 1800
# Prepare ZFC state
clientput drive tc1_driveable 35
drive tc1_driveable 35
clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0
# Go to 21 K, then 30 mT
clientput drive tc1_driveable 22
drive tc1_driveable 22
clientput drive tc1_driveable 21
drive tc1_driveable 21
clientput drive ma1_magnet_setpoint 0.03
drive ma1_magnet_setpoint 0.03
# Count and save to file
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}
#
# 4. Rocking angle scans at selected fields and temperatures
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
# 21 K 30 mT (ZFC)
set temp 21
set field 0.03
# Since we already in the desired state from the previous measurements, just begin the rocking angle scan
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
# 17 K 30 mT (HFC)
set temp 17
set field 0.03
# Go to saturation
clientput drive ma1_magnet_setpoint 0.2
drive ma1_magnet_setpoint 0.2
# In order to avoid overshooting, first cool down to slightly higher temperature that desired
set tempPrelim [expr {1+$temp}]
clientput drive tc1_driveable $tempPrelim
drive tc1_driveable $tempPrelim 
# Set the desired temperature
clientput drive tc1_driveable $temp
drive tc1_driveable $temp     
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
# 13 K 30 mT (ZFC)
set temp 13
set field 0.03
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
# 5. Field cycling at 13 K, 60 mT (HFC)
#
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
set temp 13
set field 0.06
# Counting time
histmem mode time
histmem preset 120
# Go to saturation
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