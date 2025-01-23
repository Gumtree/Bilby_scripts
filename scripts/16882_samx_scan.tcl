# samx scan

set shift {
  -2
  -1.5
  -1
  -0.5
   0
   0.5
   1
   1.5
   2	
}

histmem mode time
histmem preset 45

foreach samx_shift $shift {
	clientput drive samx $samx_shift
	drive samx $samx_shift
        newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}