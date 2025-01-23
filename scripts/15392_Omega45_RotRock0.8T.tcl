#This script is for Omega = 45. It is a full rotation rocking curve to 
#illuminate both the left and right sides of the diffraction pattern. It is
#skipping the middle three angles (the middle-middle angle has been done with
#the previous tilt rocking curve)



histmem mode time
histmem preset 600

clientput drive som2 0.3
drive som2 0.3

clientput drive samchi 0.07
drive samchi 0.07

set som2angles {
	-0.4
	-0.35
	-0.3
}


foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}


wait 10
