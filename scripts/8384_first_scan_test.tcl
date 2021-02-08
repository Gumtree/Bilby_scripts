histmem mode time
histmem preset 600

clientput ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0

hset /sample/tc1/heater/heaterRange 4

clientput drive tc1_driveable 2.0
drive tc1_driveable 2.0

clientput ma1_magnet_setpoint -1.5
drive ma1_magnet_setpoint -1.5

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

clientput ma1_magnet_setpoint -0.4
drive ma1_magnet_setpoint -0.4

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

