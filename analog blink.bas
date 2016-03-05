;tone follower, using adin and sound

;Connect a POT to P31,Vcc and GND.
;connect a LED to P0

main
HIGH P45 ;Turns the LED one 
Pause 1000
LOW P45
Pause 1000;
goto main
