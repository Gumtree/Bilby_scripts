#==========================================================
# Set 1
#clientput drive ma1_magnet_setpoint -1.5
#drive ma1_magnet_setpoint -1.5
wait 60

set field {
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
    wait 60
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
    wait 60
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
    wait 60
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
    wait 60
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
    wait 60
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
    wait 60
}

# Field to -0.2
clientput drive ma1_magnet_setpoint -0.2
drive ma1_magnet_setpoint -0.2

# Collecting data
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}
