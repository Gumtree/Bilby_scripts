# Collect 1h data at 60K, 0T
histmem mode time
histmem preset 3600

# Collecting data
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}


# Field to -1.5
clientput drive ma1_magnet_setpoint -1.5
drive ma1_magnet_setpoint -1.5

#==========================================================
# Cool at -1.5T

clientput drive tc1_pres8_setpoint 10
drive tc1_pres8_setpoint 10

clientput run tc1_temp0_setpoint 2.0
run tc1_temp0_setpoint 2.0

# Sample sensor
clientput drive tc2_temp0_setpoint 2.0
drive tc2_temp0_setpoint 2.0

# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 3.5
drive tc1_pres8_setpoint 3.5


#==========================================================

# Collect 1h data at 2K, -1.5T
histmem mode time
histmem preset 7200

# Collecting data
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}


# Field to -0.2
clientput drive ma1_magnet_setpoint -0.2
drive ma1_magnet_setpoint -0.2

# Collecting data
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

#==========================================================
# Set 1
clientput drive ma1_magnet_setpoint -1.5
drive ma1_magnet_setpoint -1.5

set field {
  -0.7
  -0.8
  -0.7
  -0.8
  -0.7
  -0.8
  -0.7
  -0.8
  -0.7
  -0.8
  -0.7
  -0.8
  -0.7
  -0.8
  -0.7
  -0.8
  -0.7
  -0.8
}

foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
}

# Field to -0.2
clientput drive ma1_magnet_setpoint -0.2
drive ma1_magnet_setpoint -0.2

# Collecting data
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

#==========================================================
# Set 2
clientput drive ma1_magnet_setpoint -1.5
drive ma1_magnet_setpoint -1.5

set field {
  -0.6
  -0.7
  -0.6
  -0.7
  -0.6
  -0.7
  -0.6
  -0.7
  -0.6
  -0.7
  -0.6
  -0.7
  -0.6
  -0.7
  -0.6
  -0.7
  -0.6
  -0.7
}

foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
}

# Field to -0.2
clientput drive ma1_magnet_setpoint -0.2
drive ma1_magnet_setpoint -0.2

# Collecting data
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

#==========================================================
# Set 3
clientput drive ma1_magnet_setpoint -1.5
drive ma1_magnet_setpoint -1.5

set field {
  -0.5
  -0.6
  -0.5
  -0.6
  -0.5
  -0.6
  -0.5
  -0.6
  -0.5
  -0.6
  -0.5
  -0.6
  -0.5
  -0.6
  -0.5
  -0.6
  -0.5
  -0.6
}

foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
}

# Field to -0.2
clientput drive ma1_magnet_setpoint -0.2
drive ma1_magnet_setpoint -0.2

# Collecting data
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

#==========================================================
# Set 4
clientput drive ma1_magnet_setpoint -1.5
drive ma1_magnet_setpoint -1.5

set field {
  -0.4
  -0.5
  -0.4
  -0.5
  -0.4
  -0.5
  -0.4
  -0.5
  -0.4
  -0.5
  -0.4
  -0.5
  -0.4
  -0.5
  -0.4
  -0.5
  -0.4
  -0.5
}

foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
}

# Field to -0.2
clientput drive ma1_magnet_setpoint -0.2
drive ma1_magnet_setpoint -0.2

# Collecting data
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

#==========================================================
# Set 5
clientput drive ma1_magnet_setpoint -1.5
drive ma1_magnet_setpoint -1.5

set field {
  -0.3
  -0.4
  -0.3
  -0.4
  -0.3
  -0.4
  -0.3
  -0.4
  -0.3
  -0.4
  -0.3
  -0.4
  -0.3
  -0.4
  -0.3
  -0.4
  -0.3
  -0.4
}

foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
}

# Field to -0.2
clientput drive ma1_magnet_setpoint -0.2
drive ma1_magnet_setpoint -0.2

# Collecting data
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

#==========================================================
# Set 6
clientput drive ma1_magnet_setpoint -1.5
drive ma1_magnet_setpoint -1.5

set field {
  -0.2
  -0.3
  -0.2
  -0.3
  -0.2
  -0.3
  -0.2
  -0.3
  -0.2
  -0.3
  -0.2
  -0.3
  -0.2
  -0.3
  -0.2
  -0.3
  -0.2
  -0.3
}

foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
}

# Field to -0.2
clientput drive ma1_magnet_setpoint -0.2
drive ma1_magnet_setpoint -0.2

# Collecting data
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}
