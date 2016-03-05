
ENABLEHSERVO2

Main ;start loop

Hservo[P23\0]
;test


;HServo [P23\8000000\500]
;HServowait[P23]
;Pause 1000;
HServo [P23\8000\500]
HServowait[P23]
Pause 1000;

;HServo [P23\-8000000\500]
;HServowait[P23]
;Pause 1000;
HServo[P23\-8000\500]
HServowait[P23]
;Pause 1000;

Goto Main