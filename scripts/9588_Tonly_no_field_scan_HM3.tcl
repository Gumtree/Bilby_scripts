set temperature {
  10
  25
  42
  62
  88
  10
}

histmem mode time
histmem preset 1200

foreach temp $temperature {
	clientput run tc1_Loop1_vSP $temp
	run tc1_Loop1_vSP $temp
	wait 900
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}