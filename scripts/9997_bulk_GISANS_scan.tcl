histmem mode time
histmem preset 2700

set rotation {
  94.1
  94.2	
  94.3
}

### Disordered phase

# Field to 0
clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0

# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 5
drive tc1_pres8_setpoint 5

# Sample area VTI
clientput run tc1_temp0_setpoint 29.1
run tc1_temp0_setpoint 29.1

# Sample sensor
clientput drive tc2_temp0_setpoint 29.1
drive tc2_temp0_setpoint 29.1

# Collect data
foreach angle $rotation {
	clientput drive msom $angle
	drive msom $angle
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

### Helical phase

# Sample area VTI
clientput run tc1_temp0_setpoint 28.3
run tc1_temp0_setpoint 28.3

# Sample sensor
clientput drive tc2_temp0_setpoint 28.3
drive tc2_temp0_setpoint 28.3

# Collect data
foreach angle $rotation {
	clientput drive msom $angle
	drive msom $angle
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

### Conical phase

# He pressure somewhere around the sample: speed up cooling, add more He
clientput drive tc1_pres8_setpoint 8
drive tc1_pres8_setpoint 8

# Sample area VTI
clientput run tc1_temp0_setpoint 5.0
run tc1_temp0_setpoint 5.0

# Sample sensor
clientput drive tc2_temp0_setpoint 5.0
drive tc2_temp0_setpoint 5.0

# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 5.0
drive tc1_pres8_setpoint 5.0

# Set field
clientput drive ma1_magnet_setpoint 0.4
drive ma1_magnet_setpoint 0.4

# Collect data
foreach angle $rotation {
	clientput drive msom $angle
	drive msom $angle
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

### Warming up

# Field back to 0
clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0

# He pressure somewhere around the sample: speed up heating, remove He
clientput drive tc1_pres8_setpoint 2
drive tc1_pres8_setpoint 2

# Sample area VTI
clientput run tc1_temp0_setpoint 40.0
run tc1_temp0_setpoint 40.0

# Sample sensor
clientput drive tc2_temp0_setpoint 40.0
drive tc2_temp0_setpoint 40.0

# Collect background data // last settings
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

### Skyrmions phase

# He pressure somewhere around the sample: speed up cooling, add He
clientput drive tc1_pres8_setpoint 10
drive tc1_pres8_setpoint 10

# Sample area VTI
clientput run tc1_temp0_setpoint 28.3
run tc1_temp0_setpoint 28.3

# Sample sensor
clientput drive tc2_temp0_setpoint 28.3
drive tc2_temp0_setpoint 28.3

# He pressure somewhere around the sample: back to average
clientput drive tc1_pres8_setpoint 5
drive tc1_pres8_setpoint 5

# Field to 0.2T
clientput drive ma1_magnet_setpoint 0.2
drive ma1_magnet_setpoint 0.2

# Collect data
foreach angle $rotation {
	clientput drive msom $angle
	drive msom $angle
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

## Back to warm
# Field to 0
clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0

# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 10
drive tc1_pres8_setpoint 10

# Sample area VTI
clientput run tc1_temp0_setpoint 40.0
run tc1_temp0_setpoint 40.0

# Sample sensor
clientput drive tc2_temp0_setpoint 40.0
drive tc2_temp0_setpoint 40.0

############################## SANS
set rotation {
  3.2
  4.2	
  5.2
}

### Disordered phase

# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 5
drive tc1_pres8_setpoint 5

# Sample area VTI
clientput run tc1_temp0_setpoint 29.1
run tc1_temp0_setpoint 29.1

# Sample sensor
clientput drive tc2_temp0_setpoint 29.1
drive tc2_temp0_setpoint 29.1

# Collect data
foreach angle $rotation {
	clientput drive msom $angle
	drive msom $angle
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

### Helical phase

# Sample area VTI
clientput run tc1_temp0_setpoint 28.3
run tc1_temp0_setpoint 28.3

# Sample sensor
clientput drive tc2_temp0_setpoint 28.3
drive tc2_temp0_setpoint 28.3

# Collect data
foreach angle $rotation {
	clientput drive msom $angle
	drive msom $angle
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

### Conical phase

# He pressure somewhere around the sample: speed up cooling, add more He
clientput drive tc1_pres8_setpoint 8
drive tc1_pres8_setpoint 8

# Sample area VTI
clientput run tc1_temp0_setpoint 5.0
run tc1_temp0_setpoint 5.0

# Sample sensor
clientput drive tc2_temp0_setpoint 5.0
drive tc2_temp0_setpoint 5.0

# He pressure somewhere around the sample
clientput drive tc1_pres8_setpoint 5.0
drive tc1_pres8_setpoint 5.0

# Set field
clientput drive ma1_magnet_setpoint 0.4
drive ma1_magnet_setpoint 0.4

# Collect data
foreach angle $rotation {
	clientput drive msom $angle
	drive msom $angle
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}

### Warming up

# Field back to 0
clientput drive ma1_magnet_setpoint 0
drive ma1_magnet_setpoint 0

# He pressure somewhere around the sample: speed up heating, remove He
clientput drive tc1_pres8_setpoint 2
drive tc1_pres8_setpoint 2

# Sample area VTI
clientput run tc1_temp0_setpoint 40.0
run tc1_temp0_setpoint 40.0

# Sample sensor
clientput drive tc2_temp0_setpoint 40.0
drive tc2_temp0_setpoint 40.0

# Collect background data // last settings
newfile HISTOGRAM_XYT
histmem start block
histmem stop
catch {save}

### Skyrmions phase

# He pressure somewhere around the sample: speed up cooling, add He
clientput drive tc1_pres8_setpoint 10
drive tc1_pres8_setpoint 10

# Sample area VTI
clientput run tc1_temp0_setpoint 28.3
run tc1_temp0_setpoint 28.3

# Sample sensor
clientput drive tc2_temp0_setpoint 28.3
drive tc2_temp0_setpoint 28.3

# He pressure somewhere around the sample: back to average
clientput drive tc1_pres8_setpoint 5
drive tc1_pres8_setpoint 5

# Field to 0.2T
clientput drive ma1_magnet_setpoint 0.2
drive ma1_magnet_setpoint 0.2

# Collect data
foreach angle $rotation {
	clientput drive msom $angle
	drive msom $angle
	newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}