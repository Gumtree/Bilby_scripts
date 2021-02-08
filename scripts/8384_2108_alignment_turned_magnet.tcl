# 20 Aug 2020 long scan

hset /sample/tc1/heater/heaterRange 4

histmem mode time
histmem preset 120

# msom
set msomArr {
  87.0
  87.5  
  88.0
  88.5
  89.0
  89.5
  90.0
  90.5
  91.0
  91.5
  92.0
  92.5
  93.0	
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
