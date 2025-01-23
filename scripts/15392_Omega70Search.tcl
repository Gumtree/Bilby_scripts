histmem mode time
histmem preset 1200




set samchi_list {
	0.17
	0.27
	0.37
}


foreach samchi_angle $samchi_list {
    clientput drive samchi $samchi_angle
    drive samchi $samchi_angle	
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}
wait 10
