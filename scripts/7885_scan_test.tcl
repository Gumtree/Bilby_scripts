
set som2angles {
  -0.66
  -0.76
  -0.86
  -0.96
  -1.06
  -1.16
  -1.26
  -1.36
  -1.46
  -1.56
  -1.66
  -1.76
  -1.86
  -1.96
  -2.06
  -2.16
}

histmem mode time
histmem preset 2040

foreach som2angle $som2angles {
	clientput drive som2 $som2angle
	drive som2 $som2angle  
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive som2 -0.86
drive som2 -0.86

clientput ma1_magnet_setpoint 0.61
drive ma1_magnet_setpoint 0.61

set som2angles1 {
  -1.36
  -1.46
  -1.56
  -1.66
  -1.76
  -1.86
  -1.96
  -2.06
  -2.16
}

histmem mode time
histmem preset 2040

foreach som2angle $som2angles1 {
	clientput drive som2 $som2angle
	drive som2 $som2angle  
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive som2 -0.86
drive som2 -0.86

clientput ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0

hset /sample/tc1/heater/heaterRange 4

clientput drive tc1_driveable 50
drive tc1_driveable 50


set som2angles2 {
  -0.66
  -0.76
  -0.86
  -0.96
  -1.06
  -1.16
  -1.26
  -1.36
  -1.46
  -1.56
  -1.66
  -1.76
  -1.86
  -1.96
  -2.06
  -2.16
}

histmem mode time
histmem preset 2040

foreach som2angle $som2angles2 {
	clientput drive som2 $som2angle
	drive som2 $som2angle  
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}
