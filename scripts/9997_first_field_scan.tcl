# 1.5K temperature, cooled in 0.01T field

set field {
  0.1
  0.2
  0.3
  0.4
  0.5
  0.6
  0.7
  0.8
  0.9
  1.0
  1.1
  1.2
  1.3
  1.4
  1.5	
}

histmem mode time
histmem preset 5400
	
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

#clientput drive tc1_temp0_sepoint $temp
#drive tc1_temp0_sepoint $temp