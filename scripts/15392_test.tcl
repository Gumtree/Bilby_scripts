histmem mode time
histmem preset 240

set som2angles {
	0.9
	1.0
	1.1
	1.2
	1.3
	1.4
	1.5
}



clientput drive samchi 0.07
drive samchi 0.07

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}
wait 10
