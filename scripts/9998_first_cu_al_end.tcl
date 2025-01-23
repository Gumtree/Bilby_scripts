
# fifth angle + tilt combo
set som2angles {
  110.0	
}

set samphiangles {
    9.0	
    0.0 
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    foreach samphiangle $samphiangles {
	clientput drive samphi $samphiangle
	drive samphi $samphiangle
	wait 2100
   }	   
}