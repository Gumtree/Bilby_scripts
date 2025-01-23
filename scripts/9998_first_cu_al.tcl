# first angle + tilt combo
set som2angles {
  -110.0	
}

set samphiangles {
   -3.0
    3.0
    6.0	
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

# set of angles
clientput drive samphi 0.0
drive samphi 0.0
set som2angles {
  -100.0
  -90.0
  -80.0
  -70.0
  -60.0
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    wait 2100
}

# second angle + tilt combo
set som2angles {
  -50.0	
}

set samphiangles {
   -3.0
    3.0
    6.0	
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

#set of angles
clientput drive samphi 0.0
drive samphi 0.0
set som2angles {
  -40.0
  -30.0
  -20.0
  -10.0
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    wait 2100  
}

# third angle + tilt combo
set som2angles {
  0.0	
}

set samphiangles {
   -3.0
    3.0
    6.0	
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

#set of angles
clientput drive samphi 0.0
drive samphi 0.0
set som2angles {
  10.0
  20.0
  30.0
  40.0
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    wait 2100   
}

# fourth angle + tilt combo
set som2angles {
  50.0	
}

set samphiangles {
   -3.0
    3.0
    6.0	
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

#set of angles
clientput drive samphi 0.0
drive samphi 0.0
set som2angles {
  60.0
  70.0
  80.0
  90.0
 100.0
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    wait 2100  	   
}

# fifth angle + tilt combo
set som2angles {
  110.0	
}

set samphiangles {
   -3.0
    3.0
    6.0	
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