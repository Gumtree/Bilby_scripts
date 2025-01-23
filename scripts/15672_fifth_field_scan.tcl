histmem mode time
histmem preset 7200

# Collecting data at 0T, 2K
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}


set field {
  0.1
  0.2	
  0.3
  0.4
  0.5
  1.5
  2.5
  0.2	
 -0.1
 -0.2
 -0.3	
}


foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0

