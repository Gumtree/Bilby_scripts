histmem mode time
histmem preset 240

clientput drive samchi 0.07
drive samchi 0.07

set som2angles {
	-0.3
	-0.25
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

clientput drive som2 0.3
drive som2 0.3
