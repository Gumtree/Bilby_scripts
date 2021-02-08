
set ListOftemps {

31.7
31.55
31.4
31.25
31.1
30.95
30.8
30.65	
30.5
30.35	
30.2
30.05
29.9
29.75
29.68
29.6	
29.53
29.45	
29.38
29.3	
29.23
29.15
29.08
29	
28.93
28.85	
28.7	
28.55
27	
28.55
28.7
28.85
28.93
29
29.08
29.15
29.23
29.3
29.38
29.45
29.53
29.6
29.68
29.75
29.9
30.05
30.2
30.35
30.5
30.65
30.8
30.95
31.1
31.25
31.4
31.55
31.7
}

set ListOfMeas {
1
2
3
4
5
6
7
}

histmem mode time
histmem preset 150

foreach temp $ListOftemps {
	hset sample/tc1/sensor/setpoint1 $temp
	
	foreach Meas $ListOfMeas {
		newfile HISTOGRAM_XYT
		histmem start block
		histmem stop
		catch {save}	
		}
	
		
	
}


