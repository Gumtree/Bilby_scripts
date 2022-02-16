set temperature {
  10
  25
  42
  62
  88
  10
}

set field {
  0.0
  2.78
  27.78
}

histmem mode time
histmem preset 1800

foreach temp $temperature {
	clientput run tc1_Loop1_vSP $temp
	run tc1_Loop1_vSP $temp
	wait 900
	foreach pos $field {
		clientput drive ma1_driveable $pos
		drive ma1_driveable $pos
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}
	}
}

clientput drive ma1_ma1_driveable 0
drive ma1_driveable 0

clientput drive tc1_Loop1_vSP 10
drive tc1_Loop1_vSP 10