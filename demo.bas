;ALL - first.bas
;My First Program
;Test two servos


;-90000 to 90000 is the range
; 1000 is faster than 100
; capitalization isn't important
ENABLEHSERVO2
Hservo[P21\0] ; centers up and down tail before inital movement


Main ;start loop
;serout s_out, i9600, ["Hello World!",13] ;prints at the beginning
HIGH P45 ;Turns the LED one 
;Pause 1000 ;wait 1 second
Hservo[P0\0] ;aribrary Center


;Hservowait [P22]
serout s_out, i9600, ["Extend",13]
Hservo [P23\50000\500] ;Right Wing Extend
HServo [P23\-1000\500] ;Right Wing Retract
;HServowait[P23] ;Pause until finsh


;HServowait[P21] 
HServo [P24\-50000\500] ; Left Wing 
HServo [P24\1000\500]
;HSERVOWAIT [P24]

;HSERVOWAIT [P24]

Pause 1000
;HServo [P23\0]; Center Servo
;Pause 1000

LOW P45 ;dims the LED
;Pause 1000 ;Waits 1 Second

;HSERVOWAIT [P22]
serout s_out, i9600, ["Retract",13]

;HServowait[P23];
HServo [P20\10000\300] ;Tail Up and down
HServo [P20\-10000\1000] ;Tail Up and down

HServo [P21\5000\500] ; Neck Up and down
HServo [P21\-8000\500] ;Neck Up and down
;HServowait[P21]
;HServowait[P21]
Hservo [P19\50000\500] ;Neck Side to side
Hservo [P19\-50000\500] ;Neck side to side
Hservo [P19\0] ;Re-center

Pause 1000;

;Pause 1000
Goto Main