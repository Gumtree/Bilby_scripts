set phis {
  -5
  -4
  -3
  -2
  -1
  0
  1
  2
  3
  4
  5
}

histmem mode time
histmem preset 140

foreach phi $phis {
	clientput drive samphi $phi
	drive samphi $phi  
        newfile HISTOGRAM_XYT
        histmem start block
        histmem stop
        catch {save}
}

clientput drive samphi 0
drive samphi 0

set som2angles {
  -5
  -4
  -3
  -2
  -1
  0
  1
  2
  3
  4
  5
}

histmem mode time
histmem preset 140

foreach som2angle $som2angles {
	clientput drive som2 $som2angle
	drive som2 $som2angle  
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

clientput drive som2 0
drive som2 0