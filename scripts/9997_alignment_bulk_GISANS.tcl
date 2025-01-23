set rotation {
  -180.0
  -179.5
  -179.0
  -178.5
  -178.0
  -177.5
  -177.0
  -176.5
  -176.0
  -175.5
  -175.0
  -174.5
  -174.0
  -173.5
  -173.0
  -172.5
  -172.0
  -171.5
  -171.0
  -170.5
  -170.0
  -169.5
  -169.0
  -168.5
  -168.0
  -167.5
  -167.0
  -166.5	
  -166.0
  -165.5
  -165.0
  -164.5
  -164.0
  -163.5
  -163.0
  -162.5
  -162.0
  -161.5
  -161.0
  -160.5	
  -160.0	
}

histmem mode time
histmem preset 60

foreach angle $rotation {
	clientput drive msom $angle
	drive msom $angle
        newfile HISTOGRAM_XYT
	histmem start block
	histmem stop
	catch {save}
}