# 2.5K som2 1deg D5 aperture

histmem mode time
histmem preset 2700

set field {
  3.2	
  6.0
}

	
foreach pos $field {
    clientput drive ma1_magnet_setpoint $pos
    drive ma1_magnet_setpoint $pos
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

