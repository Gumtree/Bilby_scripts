hset /sample/tc1/sensor/setpoint1 25.5
wait 10
histmem mode time
histmem preset 20
histmem start
histmem stop

hset /sample/tc1/sensor/setpoint1 25.6
wait 10

histmem mode time
histmem preset 20
histmem start
histmem stop



hset /sample/tc1/sensor/setpoint1 25.6
wait 10
