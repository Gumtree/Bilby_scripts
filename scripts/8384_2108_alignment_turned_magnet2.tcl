# 20 Aug 2020 long scan

hset /sample/tc1/heater/heaterRange 4

histmem mode time
histmem preset 120

# msom
set msomArr {
  85.85
}

foreach msom $msomArr {
 	clientput drive msom $msom
        drive msom $msom
	# Count and save to file
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}
