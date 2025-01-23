#This script is for Omega = 45. It is to extend the range of samchi from the 
#script 15392_Omega45_0.5T.tcl as we need to go a bit more negative with the
#rest of the tilt/samchi angles

clientput drive som2 0.3
drive som2 0.3

set samchi_list {
	-0.85
	-0.8
	-0.75
	-0.7
	-0.65
}


histmem mode time
histmem preset 120

clientput drive som2 0.3
drive som2 0.3
foreach samchi_angle $samchi_list {
    clientput drive samchi $samchi_angle
    drive samchi $samchi_angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}
wait 10
