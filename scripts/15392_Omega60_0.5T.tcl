#This script is for Omega = 60. It is the same format as 15392_Omega45.tcl
#and 0.5 T and is for an extended/full rocking curve to capture
#all of the peaks

clientput drive som2 0.2
drive som2 0.2

set samchi_list {
	-0.85
	-0.8
	-0.75
	-0.7
	-0.65
	-0.6
	-0.55
	-0.5
	-0.45
	-0.4
	-0.35
	-0.3
	-0.25
	-0.2
	-0.15
	-0.1
	-0.05
	0
	0.05
	0.1
	0.15
	0.2
	0.25
	0.3
	0.35
	0.4
	0.45
	0.5
	0.55
	0.6
	0.65
	0.7
	0.75
	0.8
}


set som2angles {
	-0.6
	-0.55
	-0.5
	-0.45
	-0.4
	-0.35
	-0.3
	-0.25
	-0.2
	-0.15
	-0.1
	-0.05
	0
	0.05
	0.1
	0.15
	0.2
	0.25
	0.3
	0.35
	0.4
	0.45
	0.5
	0.55
	0.6
	0.65
	0.7
	0.75
	0.8
	0.85
	0.9
	0.95
	1.0
}


histmem mode time
histmem preset 240

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

clientput drive som2 0.2
drive som2 0.2
foreach samchi_angle $samchi_list {
    clientput drive samchi $samchi_angle
    drive samchi $samchi_angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}
wait 10
clientput drive samchi 0.07
drive samchi 0.07

