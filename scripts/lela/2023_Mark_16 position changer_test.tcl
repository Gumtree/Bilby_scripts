drive samx 30
samplename 8_DLNP
histmem preset 600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx -30
samplename 9_HLNP
histmem preset 600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}
