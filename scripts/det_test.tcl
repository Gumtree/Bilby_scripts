drive curtaindet 14000

for {set n 23} {$n <= 50} {incr n} {
	broadcast CURRENT LOOP = $n
	drive curtaindet 1000 det 5000
	drive curtaindet 14000 det 18000
}