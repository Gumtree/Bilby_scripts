#This script is for Omega = 45. We are looking for the elusive third peak
#that we saw at 0.8 T so now I am starting with just Tilt RCs and then when
#we find the peaks, do Rotation RCs

#Som2 Center for Omega = 45
clientput drive som2 0.3
drive som2 0.3

set samchi_list {
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
}


histmem mode time
histmem preset 600


foreach samchi_angle $samchi_list {
    clientput drive samchi $samchi_angle
    drive samchi $samchi_angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}
wait 10




