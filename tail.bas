ENABLEHSERVO2


Main ;start loop

HIGH P45
Hservo [P24\15000\1000]
HServo [P23\15000\1000]
;Hservowait[P24,P23]
;HIGH P45
Pause 1000;
 
LOW P45
HServo[P24\-15000\1000]
Hservo[P23\-15000\1000]
;Hservowait[P24,P23];
;LOW P45
Pause 1000;

end

Goto Main