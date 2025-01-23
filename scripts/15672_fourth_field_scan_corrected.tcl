
histmem mode time
histmem preset 1800

set msomangles {
   95.7	
}

foreach msomangle $msomangles {
    clientput drive msom $msomangle
    drive msom $msomangle
    newfile HISTOGRAM_XYT
    histmem start block
    histmem stop
    catch {save}
}



