# make sure no extra beamstops are in the beam
# to do ones
clientput drive bs3 0.0
drive bs3 0.0
clientput drive bs5 0.0
drive bs5 0.0


# TRANSMISSION set-up
clientput drive att_pos 3
drive att_pos 3

clientput drive bs4 0.0
drive bs4 0.0

histmem mode time
histmem preset 120

# Scan three points in samz for two samx - widest part of the cell
set samz_value {
  146
}
# samx 26 16 7 -2 -20 -11

set samx_value {
   26.0
   7.0
   -20.0
   16
   -2
   -11
}

foreach samz $samz_value {
    clientput drive samz $samz
    drive samz $samz	
    foreach samx $samx_value {
	clientput drive samx $samx
	drive samx $samx
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
   }	   
}

# Do remaining 

# Scan three points in samz for two samx - widest part of the cell
set samz_value {
  143.5
  148.5
}
set samx_value {
   -20.0
   -11.0
}

foreach samz $samz_value {
    clientput drive samz $samz
    drive samz $samz	
    foreach samx $samx_value {
	clientput drive samx $samx
	drive samx $samx
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
   }	   
}

## repeat the entire set-up with scattering set-up now

# SCATTERING set-up
clientput drive bs4 65.8
drive bs4 65.8

clientput drive att_pos 1
drive att_pos 1

histmem mode time
histmem preset 3600

# Scan only one point in samz for the four other samx
set samz_value {
  146
}
# samx 26 16 7 -2 -20 -11

set samx_value {
   26.0
   7.0
   -20.0
   16
   -2
   -11
}

foreach samz $samz_value {
    clientput drive samz $samz
    drive samz $samz	
    foreach samx $samx_value {
	clientput drive samx $samx
	drive samx $samx
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
   }	   
}

# Do remaining 

# Scan three points in samz for two samx - widest part of the cell
set samz_value {
  143.5
  148.5
}
set samx_value {
   -20.0
   -11.0
}

foreach samz $samz_value {
    clientput drive samz $samz
    drive samz $samz	
    foreach samx $samx_value {
	clientput drive samx $samx
	drive samx $samx
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
   }	   
}
