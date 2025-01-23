


run bs4 66.2
run att_pos 1


hset /sample/tc2/Loop1/setpoint 20.1
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 20.1
}

histmem preset 1800
drive samx 35
samplename PDAPFH100D2Ostart_loop
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 140.2
samplename PDAPFH61D2Ostart_loop
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 245.4
samplename PDAPFH9D2Ostart_loop
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}





histmem preset 60

hset /sample/tc2/Loop1/setpoint 20
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 20
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
hset /sample/tc2/Loop1/setpoint 22
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 21.63
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
hset /sample/tc2/Loop1/setpoint 24
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 23.26
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

hset /sample/tc2/Loop1/setpoint 26
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 24.89
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

hset /sample/tc2/Loop1/setpoint 28
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 26.52
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

hset /sample/tc2/Loop1/setpoint 30
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 28.15
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

hset /sample/tc2/Loop1/setpoint 32
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 29.78
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

hset /sample/tc2/Loop1/setpoint 34
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 31.41
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

hset /sample/tc2/Loop1/setpoint 36
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 33.04
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

hset /sample/tc2/Loop1/setpoint 38
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 34.67
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

hset /sample/tc2/Loop1/setpoint 40
for {set n 1} {$n <= 6} {incr n} {
hset [format /sample/tc1/Loop1/setpoint%02d $n] 36.3
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 37.93
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 39.56
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 41.19
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 42.82
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 44.45
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 46.08
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 47.71
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 49.34
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 50.97
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 52.6
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 54.23
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 55.86
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 57.49
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 59.12
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 60.75
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 62.38
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 64.01
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 65.64
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 67.27
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 68.9
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 70.53
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 72.16
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 73.79
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 75.42
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 77.05
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 77.05
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
hset [format /sample/tc1/Loop1/setpoint%02d $n] 77.05
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

