# Counting time
histmem mode time
histmem preset 5
#
# Count and save to file
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}
#