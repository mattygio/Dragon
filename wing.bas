ENABLEHSERVO2

Main ;start loop
;P23 right wing??
;P24 left wing??

HServo [P23\-25000\700] 
HIGH P45 
HServowait [P23]
Hservo [P24\24000\700]
Hservowait [P24]
Pause 1000;

HServo[P23\18000\700]
HServowait[P23]
Hservo [P24\-18000\700]
Hservowait [P24]
LOW P45
Pause 1000;



Goto Main

