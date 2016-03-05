;Basic Micro ARC32 test code. Set terminal window to 9600 baud.

SetHSerial1 H9600,H8DATABITS,HNOPARITY,H1STOPBITS

servopin var byte
for servopin = 0 to 31
	hservo [servopin\0] ;default all servos to center position
next
pause 1000

main
	for servopin = 0 to 31
		hserout [0," Moving servo: ",dec servopin,13,13]
		hserout ["VS1 voltage is: ",real (TOFLOAT hservostate 32)/1024.0*20.0\2,"v",13]
		hserout ["VL voltage is: ",real (TOFLOAT hservostate 33)/1024.0*20.0\2,"v",13]
		hserout ["VS2 voltage is: ",real (TOFLOAT hservostate 34)/1024.0*20.0\2,"v",13]

		if(hservostate 33 < 281)then
			hserout ["Battery voltage is low!"]
			high p45 ;turn battery warnign LED on
		else
			low p45
		endif

		hservo [servopin\-5000\100] ;move to -5000 position in 1 second
		while(hservoidle(servopin)=0)
			toggle p44
			pause 100
		wend

		hservo [servopin\5000\100] ;move from -5000 to 5000 position in 2 seconds
		while(hservoidle(servopin)=0)
			toggle p44
			pause 100
		wend

		hservo [servopin\0\100] ;move to 0 position in 1 second
		while(hservoidle(servopin)=0)
			toggle p44
			pause 100
		wend

		low p44
		pause 500
	next
	
	goto main