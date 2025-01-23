


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
