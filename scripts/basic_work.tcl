histmem mode time
histmem preset 10

clientput drive ma1_magnet_setpoint 0.2
drive ma1_magnet_setpoint 0.2

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

clientput drive ma1_magnet_setpoint 0.0
drive ma1_magnet_setpoint 0.0

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}