


#drive samx -24.8
#histmem preset 3600

#histmem start
#newfile HISTOGRAM_XYT
#save

#drive att_pos 2
#drive bs4 0

drive samx -24.3
histmem preset 300
histmem start
wait 300
newfile HISTOGRAM_XYT
save

drive samx -23.8
histmem preset 300
histmem start
wait 300
newfile HISTOGRAM_XYT
save

drive samx -24.8
histmem preset 300
histmem start
wait 300
newfile HISTOGRAM_XYT
save