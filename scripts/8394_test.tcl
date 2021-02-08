# test some scripts
set aaa 25
#
set bbb [expr {1+$aaa}]
#
clientput drive tc1_driveable $bbb
drive tc1_driveable $bbb