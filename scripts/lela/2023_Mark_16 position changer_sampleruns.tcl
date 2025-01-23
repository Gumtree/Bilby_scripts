drive att_pos 2
drive bs4 0

drive samx 330
samplename 3_EmptyBeam
histmem preset 1200
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 270
samplename 4_BlockedBeam
histmem preset 600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 210
samplename 5_EmptyCell
histmem preset 600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 150
samplename 6_D2OBuffer
histmem preset 600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 90
samplename 7_H2OBuffer
histmem preset 600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 30
samplename 8_DLNPinHBuffer
histmem preset 600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx -30
samplename 9_HLNPinDBuffer
histmem preset 600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx -270
samplename 13_Paper
histmem preset 600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx -330
samplename 14_AgBe
histmem preset 600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive bs4 65.8
drive att_pos 1

drive samx 270
samplename 4_BlockedBeam
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 210
samplename 5_EmptyCell
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 30
samplename 8_DLNPinHBuffer
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx -30
samplename 9_HLNPinDBuffer
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 150
samplename 6_D2OBuffer
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 90
samplename 7_H2OBuffer
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx -270
samplename 13_Paper
histmem preset 600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx -330
samplename 14_AgBe
histmem preset 600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 30
samplename 8_DLNPinHBuffer
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx -30
samplename 9_HLNPinDBuffer
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 150
samplename 6_D2OBuffer
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 90
samplename 7_H2OBuffer
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 270
samplename 4_BlockedBeam
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

drive samx 210
samplename 5_EmptyCell
histmem preset 3600
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}
