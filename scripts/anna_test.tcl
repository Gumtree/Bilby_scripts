
hset sample/tc1/sensor/setpoint1 17.2
wait 30

clientput drive tc1_driveable 17.0
drive tc1_driveable 17.0


clientput drive ma1_magnet_setpoint 0.01
drive ma1_magnet_setpoint 0.01


histmem mode time
histmem preset 10

newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}



~~~~~~ NOT WORKING ~~~~~~~~~~~~
clientput get /sample/ma1/setpoint
get /sample/ma1/setpoint

clientput set /sample/ma1/setpoint 0.0
set /sample/ma1/setpoint 0.0
