


run bs4 66.2
run att_pos 1

histmem preset 60

hset /sample/tc2/Loop1/setpoint 40
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 39.04
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 42
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 40.56
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 44
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 42.08
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 46
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 43.6
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 48
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 45.12
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 50
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 46.64
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 52
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 48.16
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 54
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 49.68
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 56
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 51.2
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 58
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 52.72
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 60
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 54.24
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 62
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 55.76
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 64
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 57.28
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 66
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 58.8
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 68
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 60.32
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 70
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 61.84
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 72
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 63.36
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 74
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 64.88
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 76
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 66.4
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 78
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 67.92
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 80
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 69.44
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 82
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 70.96
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 84
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 72.48
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 86
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 74
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 88
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 75.52
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 90
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 77.04
}

for {set idx0 0} {$idx0 < 4} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

histmem preset 1800

hset /sample/tc2/Loop1/setpoint 90
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 77.04
}

for {set idx0 0} {$idx0 < 1} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}


histmem preset 60

hset /sample/tc2/Loop1/setpoint 90
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 77.04
}

for {set idx0 0} {$idx0 < 1} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 35
	samplename PDAPFH100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 140.2
	samplename PDAPFH61D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx 245.4
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}


run tc2_Loop1_vSP 20
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 20
}


histmem preset 1800
drive samx 35
samplename PDAPFH100D2Ocooling_loop
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 35
samplename PDAPFH100D2Oend_loop
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 140.2
samplename PDAPFH61D2Oend_loop
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 245.4
samplename PDAPFH9D2Oend_loop
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

