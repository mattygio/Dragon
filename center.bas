;ALL - first.bas
;My First Program
;Test two servos


;-90000 to 90000 is the range
; 1000 is faster than 100
; capitalization isn't important
; Test for large Servo

ENABLEHSERVO2

Main ;start loop

Hservo[P23\0]



;HServo [P23\8000000\500]
;HServowait[P23]
;Pause 1000;
HServo [P23\0]
;HServowait[P23]
;Pause 1000;

;HServo [P23\-8000000\500]
;HServowait[P23]
;Pause 1000;
HServo[P23\0]
;HServowait[P23]
;Pause 1000;

Goto Main