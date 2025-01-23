# 2.5K 

histmem mode time
histmem preset 12600

set field {
  3.1
  3.2
  3.3
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

