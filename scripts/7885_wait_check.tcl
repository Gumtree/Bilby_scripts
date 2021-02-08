
set ListOftemps {
1
2
3
4
5
6
7
8
9
10
}

set ListOfMeas {
a
b
c
d
e
f
g
}


foreach temp $ListOftemps {
	clientput $temp
	
	
	
	foreach Meas $ListOfMeas {
		clientput $Meas
		wait 5
		
	}
}


