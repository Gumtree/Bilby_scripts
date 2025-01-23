histmem mode time
histmem preset 60

set som2angles {
  -1.0
  -2.0
   1.0
   2.0
}

set samphiangles {
   -1.0
   2.0
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    foreach samphiangle $samphiangles {
	clientput drive samphi $samphiangle
	drive samphi $samphiangle
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
   }	   
}





