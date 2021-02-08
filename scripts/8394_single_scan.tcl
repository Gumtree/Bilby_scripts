# Scan for a single magnetic field and temperature
# HFC state
#
# Counting time
histmem mode time
histmem preset 120
# Field and temperature
set field 0.12
set temp 3
#
# Set saturation field - persistent mode
# Assume 0.2 to be enough
clientput drive ma1_magnet_setpoint 0.2
drive ma1_magnet_setpoint 0.2
# Set temperature
clientput drive tc1_driveable $temp
drive tc1_driveable $temp
# Set magnetic field
clientput drive ma1_magnet_setpoint $field
drive ma1_magnet_setpoint $field
# Count and save to file
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}
#