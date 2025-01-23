# 2.5K som2 1deg D5 aperture

histmem mode time
histmem preset 10800

set field {
  3.0
  3.1	
  3.2
  3.3
  3.4	
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