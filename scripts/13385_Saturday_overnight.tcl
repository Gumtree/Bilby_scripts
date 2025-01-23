#drop field to 0, to be sure starting from scratch
# detectors are moved here

#T control: check if it is working
hset /sample/tc1/heater/heaterRange 3

clientput drive tc1_driveable 2.0
drive tc1_driveable 2.0

# Check where the tilt is
clientput drive samphi 0.0
drive samphi 0.0

# Measure backgrounds in 0 field
clientput drive ma1_magnet_setpoint 0.0
drive ma1_magnet_setpoint 0.0

histmem mode time
histmem preset 120

set som2angles {
  -1.5
  -1.4
  -1.3
  -1.2	
  -1.1
  -1.0
  -0.9
  -0.8
  -0.7
  -0.6
  -0.5
  -0.4
  -0.3
  -0.2
  -0.1
   0.0
   0.1
   0.2
   0.3
   0.4
   0.5
   0.6
   0.7
   0.8
   0.9
   1.0
   1.1
   1.2
   1.3
   1.4
   1.5
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

# starting from higher field
histmem mode time
histmem preset 180

clientput drive ma1_magnet_setpoint 2.8
drive ma1_magnet_setpoint 2.8

set som2angles {
  -1.5
  -1.4
  -1.3
  -1.2	
  -1.1
  -1.0
  -0.9
  -0.8
  -0.7
  -0.6
  -0.5
  -0.4
  -0.3
  -0.2
  -0.1
   0.0
   0.1
   0.2
   0.3
   0.4
   0.5
   0.6
   0.7
   0.8
   0.9
   1.0
   1.1
   1.2
   1.3
   1.4
   1.5
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

clientput drive ma1_magnet_setpoint 3.0
drive ma1_magnet_setpoint 3.0

set som2angles {
  -1.5
  -1.4
  -1.3
  -1.2	
  -1.1
  -1.0
  -0.9
  -0.8
  -0.7
  -0.6
  -0.5
  -0.4
  -0.3
  -0.2
  -0.1
   0.0
   0.1
   0.2
   0.3
   0.4
   0.5
   0.6
   0.7
   0.8
   0.9
   1.0
   1.1
   1.2
   1.3
   1.4
   1.5
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

clientput drive ma1_magnet_setpoint 3.2
drive ma1_magnet_setpoint 3.2

set som2angles {
  -1.5
  -1.4
  -1.3
  -1.2	
  -1.1
  -1.0
  -0.9
  -0.8
  -0.7
  -0.6
  -0.5
  -0.4
  -0.3
  -0.2
  -0.1
   0.0
   0.1
   0.2
   0.3
   0.4
   0.5
   0.6
   0.7
   0.8
   0.9
   1.0
   1.1
   1.2
   1.3
   1.4
   1.5
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

histmem mode time
histmem preset 240

clientput drive ma1_magnet_setpoint 3.4
drive ma1_magnet_setpoint 3.4

set som2angles {
  -1.5
  -1.4
  -1.3
  -1.2	
  -1.1
  -1.0
  -0.9
  -0.8
  -0.7
  -0.6
  -0.5
  -0.4
  -0.3
  -0.2
  -0.1
   0.0
   0.1
   0.2
   0.3
   0.4
   0.5
   0.6
   0.7
   0.8
   0.9
   1.0
   1.1
   1.2
   1.3
   1.4
   1.5
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

clientput drive ma1_magnet_setpoint 3.6
drive ma1_magnet_setpoint 3.6

set som2angles {
  -1.5
  -1.4
  -1.3
  -1.2	
  -1.1
  -1.0
  -0.9
  -0.8
  -0.7
  -0.6
  -0.5
  -0.4
  -0.3
  -0.2
  -0.1
   0.0
   0.1
   0.2
   0.3
   0.4
   0.5
   0.6
   0.7
   0.8
   0.9
   1.0
   1.1
   1.2
   1.3
   1.4
   1.5
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

clientput drive ma1_magnet_setpoint 3.4
drive ma1_magnet_setpoint 3.4

set som2angles {
  -1.5
  -1.4
  -1.3
  -1.2	
  -1.1
  -1.0
  -0.9
  -0.8
  -0.7
  -0.6
  -0.5
  -0.4
  -0.3
  -0.2
  -0.1
   0.0
   0.1
   0.2
   0.3
   0.4
   0.5
   0.6
   0.7
   0.8
   0.9
   1.0
   1.1
   1.2
   1.3
   1.4
   1.5
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

histmem mode time
histmem preset 180

clientput drive ma1_magnet_setpoint 3.2
drive ma1_magnet_setpoint 3.2

set som2angles {
  -1.5
  -1.4
  -1.3
  -1.2	
  -1.1
  -1.0
  -0.9
  -0.8
  -0.7
  -0.6
  -0.5
  -0.4
  -0.3
  -0.2
  -0.1
   0.0
   0.1
   0.2
   0.3
   0.4
   0.5
   0.6
   0.7
   0.8
   0.9
   1.0
   1.1
   1.2
   1.3
   1.4
   1.5
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

clientput drive ma1_magnet_setpoint 3.0
drive ma1_magnet_setpoint 3.0

set som2angles {
  -1.5
  -1.4
  -1.3
  -1.2	
  -1.1
  -1.0
  -0.9
  -0.8
  -0.7
  -0.6
  -0.5
  -0.4
  -0.3
  -0.2
  -0.1
   0.0
   0.1
   0.2
   0.3
   0.4
   0.5
   0.6
   0.7
   0.8
   0.9
   1.0
   1.1
   1.2
   1.3
   1.4
   1.5
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

clientput drive ma1_magnet_setpoint 2.8
drive ma1_magnet_setpoint 2.8

set som2angles {
  -1.5
  -1.4
  -1.3
  -1.2	
  -1.1
  -1.0
  -0.9
  -0.8
  -0.7
  -0.6
  -0.5
  -0.4
  -0.3
  -0.2
  -0.1
   0.0
   0.1
   0.2
   0.3
   0.4
   0.5
   0.6
   0.7
   0.8
   0.9
   1.0
   1.1
   1.2
   1.3
   1.4
   1.5
}

foreach som2angle $som2angles {
    clientput drive som2 $som2angle
    drive som2 $som2angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}

clientput drive ma1_magnet_setpoint 0.0
drive ma1_magnet_setpoint 0.0
