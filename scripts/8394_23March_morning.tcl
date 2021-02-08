# 23.03.2020 Repeating some lost scans FeCoSi x=0.15 for the B||n||100 direction
#
# 1. Minor hysteresis loops
#
# 19 K (HFC)
set fieldArr {
  0.030
  0.035
  0.030
  0.040
  0.030
  0.045
  0.030
  0.050
  0.030
  0.055
  0.030
  0.060
}
set temp 19
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
#
# Set field to zero
clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0
#
# 2. Additional rocking angle scan - in case of time left
#
# 3 K 0 mT (ZFC) 
set temp 3
# Prepare the ZFC state
clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0
clientput drive tc1_driveable 35
drive tc1_driveable 35
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