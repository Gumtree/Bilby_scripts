set samx_pos {
  0.0
  1.0
}

histmem mode time
histmem preset 10

	
foreach pos $samx_pos {
	clientput drive samx $pos
	drive samx $pos
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}