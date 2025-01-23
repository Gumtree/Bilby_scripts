# Warm to 60K

# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 2
drive tc1_pres8_setpoint 2

# Sample area VTI
clientput run tc1_temp0_setpoint 60.0
run tc1_temp0_setpoint 60.0

# Sample sensor
clientput drive tc2_temp0_setpoint 60.0
drive tc2_temp0_setpoint 60.0

# Field to -1.5
clientput drive ma1_magnet_setpoint -1.5
drive ma1_magnet_setpoint -1.5

# Collect 1h data at 60K, -1.5T
histmem mode time
histmem preset 3600

# Collecting data
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

# Cool to 2K at -1.5K

# He pressure somewhere around the sample
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

# Filed scans

histmem mode time
histmem preset 7200

# ===========================================================
set field {
  0
  1.5
  0
  -1.5
  0
}

foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}
# ===========================================================
# 1
# Field to 1.5T
clientput drive ma1_magnet_setpoint 1.5
drive ma1_magnet_setpoint 1.5

set field {
  0
}

foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

# Field to -1.5T 
clientput drive ma1_magnet_setpoint -1.5
drive ma1_magnet_setpoint -1.5


set field {
  0
}

foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

# ===========================================================
# 2
# Field to 1.5T
clientput drive ma1_magnet_setpoint 1.5
drive ma1_magnet_setpoint 1.5

set field {
  0
}

foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

# Field to -1.5T 
clientput drive ma1_magnet_setpoint -1.5
drive ma1_magnet_setpoint -1.5


set field {
  0
}

foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}
# ===========================================================
# 3
# Field to 1.5T
clientput drive ma1_magnet_setpoint 1.5
drive ma1_magnet_setpoint 1.5

set field {
  0
}

foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

# Field to -1.5T 
clientput drive ma1_magnet_setpoint -1.5
drive ma1_magnet_setpoint -1.5


set field {
  0
}

foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}
# ===========================================================

set field {
  1.5
  0
  -1.5
  0
}

foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}
# ===========================================================
# ===========================================================
# ===========================================================
# ===========================================================
# Transmission geometry 

clientput drive msom 6.75
drive msom 6.75

#D5 aperture
clientput drive sapmot 278.0
drive sapmot 278.0

histmem mode time
histmem preset 10800

set field {
  -1.5
  0
  0.2
  0.3
  0.4
  0.5
  0.6
  0.7
  0.8
  0.9	
}

foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}
