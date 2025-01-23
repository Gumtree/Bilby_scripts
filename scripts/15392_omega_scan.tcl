histmem mode time
histmem preset 15

set som2angles {
	-0.5
	-0.4
	-0.3
	-0.2
	-0.1
	0
	0.1
	0.2
	0.3
	0.4
	0.5
	0.6
	0.7
	0.8
	0.9
	1.0
	1.1
	1.2
	1.3
	1.4
	1.5
	1.6
	1.7
	1.8
	1.9
	2.0
	2.1
	2.2
	2.3
	2.4
	2.5
}



#clientput drive samchi 0.07
#drive samchi 0.07

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

