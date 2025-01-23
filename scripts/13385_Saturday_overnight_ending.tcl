# finishing sequence after refill

histmem mode time
histmem preset 180

clientput drive ma1_magnet_setpoint 3.2
drive ma1_magnet_setpoint 3.2

set som2angles {
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
