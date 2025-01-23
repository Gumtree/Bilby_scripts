histmem mode time
histmem preset 1800

hset /sample/tc2/Loop1/setpoint 20

drive samx 140.2
samplename PDAPFH61D2O
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 35
samplename PDAPFH9D2O
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}


histmem preset 60

hset /sample/tc2/Loop1/setpoint 20

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 22

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 24

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 26

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 28

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 30

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 32

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 34

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 36

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 38

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 40

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 42

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 44

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 46

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 48

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 50

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 52

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 54

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 56

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 58

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 60

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 62

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 64

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 66

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 68

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 70

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 72

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 74

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 76

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 78

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 80

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 82

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 84

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 86

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 88

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

hset /sample/tc2/Loop1/setpoint 90

for {set idx0 0} {$idx0 < 6} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

histmem preset 1800

hset /sample/tc2/Loop1/setpoint 90

for {set idx0 0} {$idx0 < 1} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx 245.4
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
	
	drive samx 35
	samplename PDAPFH9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

histmem preset 3600

drive tc2_Loop1_vSP 20

for {set idx0 0} {$idx0 < 1} {incr idx0} {
	broadcast CURRENT LOOP = $idx0
	drive samx -175.4
	samplename 9D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
	
	drive samx -280.6
	samplename 100D2O-[expr $idx0]
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}