
#set of angles
clientput drive samphi 0.0
drive samphi 0.0
set som2angles {
  120.0
  130.0
  140.0
  150.0
  160.0
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    wait 1260  	   
}

