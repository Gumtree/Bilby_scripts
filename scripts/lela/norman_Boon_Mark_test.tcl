histmem mode time
histmem preset 1800

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

run tc2_Loop1_vSP 20

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

run tc2_Loop1_vSP 22

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

run tc2_Loop1_vSP 24

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

run tc2_Loop1_vSP 26

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

run tc2_Loop1_vSP 28

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

run tc2_Loop1_vSP 30

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

run tc2_Loop1_vSP 32

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

run tc2_Loop1_vSP 34

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

run tc2_Loop1_vSP 36

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

run tc2_Loop1_vSP 38

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

run tc2_Loop1_vSP 40

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

run tc2_Loop1_vSP 42

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

run tc2_Loop1_vSP 44

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

run tc2_Loop1_vSP 46

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

run tc2_Loop1_vSP 48

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

run tc2_Loop1_vSP 50

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

run tc2_Loop1_vSP 52

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

run tc2_Loop1_vSP 54

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

run tc2_Loop1_vSP 56

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

run tc2_Loop1_vSP 58

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

run tc2_Loop1_vSP 60

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

run tc2_Loop1_vSP 62

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

run tc2_Loop1_vSP 64

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

run tc2_Loop1_vSP 66

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

run tc2_Loop1_vSP 68

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

run tc2_Loop1_vSP 70

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

run tc2_Loop1_vSP 72

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

run tc2_Loop1_vSP 74

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

run tc2_Loop1_vSP 76

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

run tc2_Loop1_vSP 78

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

run tc2_Loop1_vSP 80

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

run tc2_Loop1_vSP 82

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

run tc2_Loop1_vSP 84

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

run tc2_Loop1_vSP 86

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

run tc2_Loop1_vSP 88

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

run tc2_Loop1_vSP 90

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

run tc2_Loop1_vSP 90

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