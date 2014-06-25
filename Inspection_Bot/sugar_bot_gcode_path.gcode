;(***************SUGAR_TREE*********************)
;(*** Wednesday, May 07, 2014 @ 05:42:38 PM ***)
;(Copyright 2012 Jordan Miller, jmil@alum.mit.edu, All Rights Reserved)
;(*** Using significantly modified/customized Marlin Firmware, RAMPS 1.2 and RAMMS ***)
M127 ; VALVE CLOSED
M129 ; Although set to 255 this sets Extruder Off because of our wiring
G28 ; Home x, then y, then z axes
G90 ; absolute coordinates
; break up z and xy travel so xy can go faster
G0 X330 Y50 F6000 ; go to start position, (35,10,10) as (x,y,z)
G0 Z12.2 F6000; go up 2 mm
M128 S140;
M126 ; prime
G4 P6000;
M127;
G92 X0 Y0 Z0 ; you are now at 0,0,10
G0 X40 Y12 F1000;
G92 X0 Y0 Z0 ; you are now at 0,0,10
;(***************End of Beginning*********************)
G1 X0 Y0 Z0.25 F500 ; (go to start position)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1500 ; wait for 1500 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NEXT ROW***********************)
G1 X0 Y0 Z10.45 F500
G1 X0 Y38.5 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NEXT ROW***********************)
G1 X0 Y0 Z10.45 F500
G1 X0 Y38.5 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NEXT ROW***********************)
G1 X0 Y0 Z10.45 F500
G1 X0 Y38.5 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NEXT ROW***********************)
G1 X0 Y0 Z10.45 F500
G1 X0 Y38.5 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NOTE THAT NEXT COLUMN STARTS AT FIRST ROW TOO***********************)
G1 X0 Y0 Z10.45 F500
G1 X52 Y-154.0 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NEXT ROW***********************)
G1 X0 Y0 Z10.45 F500
G1 X0 Y38.5 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NEXT ROW***********************)
G1 X0 Y0 Z10.45 F500
G1 X0 Y38.5 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NEXT ROW***********************)
G1 X0 Y0 Z10.45 F500
G1 X0 Y38.5 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NEXT ROW***********************)
G1 X0 Y0 Z10.45 F500
G1 X0 Y38.5 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NOTE THAT NEXT COLUMN STARTS AT FIRST ROW TOO***********************)
G1 X0 Y0 Z10.45 F500
G1 X52 Y-154.0 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NEXT ROW***********************)
G1 X0 Y0 Z10.45 F500
G1 X0 Y38.5 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NEXT ROW***********************)
G1 X0 Y0 Z10.45 F500
G1 X0 Y38.5 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NEXT ROW***********************)
G1 X0 Y0 Z10.45 F500
G1 X0 Y38.5 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NEXT ROW***********************)
G1 X0 Y0 Z10.45 F500
G1 X0 Y38.5 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NOTE THAT NEXT COLUMN STARTS AT FIRST ROW TOO***********************)
G1 X0 Y0 Z10.45 F500
G1 X52 Y-154.0 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NEXT ROW***********************)
G1 X0 Y0 Z10.45 F500
G1 X0 Y38.5 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NEXT ROW***********************)
G1 X0 Y0 Z10.45 F500
G1 X0 Y38.5 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NEXT ROW***********************)
G1 X0 Y0 Z10.45 F500
G1 X0 Y38.5 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0
;(**********NEXT ROW***********************)
G1 X0 Y0 Z10.45 F500
G1 X0 Y38.5 Z10.45 F500
G92 X0 Y0 Z10.45 ; (You are now at 0,0,ThisGCode.Z)
;(**********Start again by going to firstLayerHeight******************)
G1 X0 Y0 Z0.25 F500 ; (Move to first layer height)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.25 F250.0
G1 X0 Y7 Z0.25 F250.0
G1 X0 Y17 Z0.25 F500
G1 X20 Y17 Z0.25 F500
G1 X20 Y7 Z0.25 F500
G1 X0.6 Y7 Z0.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.25 F500
G1 X-1.2 Y2.4 Z0.25 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X0 Y-0.6 Z0.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z0.65 F250.0
G1 X0 Y7 Z0.65 F250.0
G1 X0 Y17 Z0.65 F500
G1 X20 Y17 Z0.65 F500
G1 X20 Y7 Z0.65 F500
G1 X0.6 Y7 Z0.65 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z0.65 F500
G1 X-1.2 Y2.4 Z0.65 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X0 Y-1.8 Z1.05 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.05 F250.0
G1 X0 Y7 Z1.05 F250.0
G1 X0 Y17 Z1.05 F500
G1 X20 Y17 Z1.05 F500
G1 X20 Y7 Z1.05 F500
G1 X0.6 Y7 Z1.05 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.05 F500
G1 X-1.2 Y2.4 Z1.05 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X0 Y-3.0 Z1.45 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.45 F250.0
G1 X0 Y7 Z1.45 F250.0
G1 X0 Y17 Z1.45 F500
G1 X20 Y17 Z1.45 F500
G1 X20 Y7 Z1.45 F500
G1 X0.6 Y7 Z1.45 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.45 F500
G1 X-1.2 Y2.4 Z1.45 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X0 Y-4.2 Z1.85 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z1.85 F250.0
G1 X0 Y7 Z1.85 F250.0
G1 X0 Y17 Z1.85 F500
G1 X20 Y17 Z1.85 F500
G1 X20 Y7 Z1.85 F500
G1 X0.6 Y7 Z1.85 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z1.85 F500
G1 X-1.2 Y2.4 Z1.85 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X0 Y-5.4 Z2.25 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P750 ; wait for 750 milliseconds before movement
G1 X-5.38461538462 Y0 Z2.25 F250.0
G1 X0 Y7 Z2.25 F250.0
G1 X0 Y17 Z2.25 F500
G1 X20 Y17 Z2.25 F500
G1 X20 Y7 Z2.25 F500
G1 X0.6 Y7 Z2.25 F500
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z2.25 F500
G1 X-1.2 Y2.4 Z2.25 F500
G1 X-1.2 Y2.4 Z2.65 F500
G1 X0 Y-6.6 Z2.65 F500
G4 P100 ; (wait for 2 sec)
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.65 F500
;(x is:1 and X-Value Here is: 11.4285714286)
G1 X11.4285714286 Y-3.5 Z2.65 F500
G1 X11.4285714286 Y0 Z2.65 F500
G1 X11.4285714286 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X11.4285714286 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X0.0 Y27 Z3.85 F1055.07499342
G1 X0.0 Y27 Z0.25 F1055.07499342
G1 X0.0 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0.0 Y32 Z0.25 F500
G1 X0.0 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-8.9 Y32 Z2.65 F500
G1 X-8.9 Y15.44 Z2.65 F500
G1 X-8.9 Y15.44 Z0.05 F500
G1 X-8.9 Y0 Z0.05 F500
G1 X-8.9 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:2 and X-Value Here is: 14.2857142857)
G1 X14.2857142857 Y-3.5 Z2.89 F500
G1 X14.2857142857 Y0 Z2.89 F500
G1 X14.2857142857 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X14.2857142857 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X2.85714285714 Y27 Z3.85 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F1055.07499342
G1 X2.85714285714 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X2.85714285714 Y32 Z0.25 F500
G1 X2.85714285714 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-9.5 Y32 Z2.65 F500
G1 X-9.5 Y14.66 Z2.65 F500
G1 X-9.5 Y14.66 Z0.05 F500
G1 X-9.5 Y0 Z0.05 F500
G1 X-9.5 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:3 and X-Value Here is: 17.1428571429)
G1 X17.1428571429 Y-3.5 Z2.89 F500
G1 X17.1428571429 Y0 Z2.89 F500
G1 X17.1428571429 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X17.1428571429 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X5.71428571429 Y27 Z3.85 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F1055.07499342
G1 X5.71428571429 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X5.71428571429 Y32 Z0.25 F500
G1 X5.71428571429 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.1 Y32 Z2.65 F500
G1 X-10.1 Y13.88 Z2.65 F500
G1 X-10.1 Y13.88 Z0.05 F500
G1 X-10.1 Y0 Z0.05 F500
G1 X-10.1 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
;(x is:4 and X-Value Here is: 20.0)
G1 X20.0 Y-3.5 Z2.89 F500
G1 X20.0 Y0 Z2.89 F500
G1 X20.0 Y0 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X20.0 Y0 Z3.85 F500
;(MY VARIABLE VASCULAR SPEED IS:)
;(MY EQUATION IS: filamentSpeed =  (y/2221.5)**(1/-0.3138))
;(SO, FOR A desired filamentSize of 250 micron in diameter, we need a speed of 1055.07499342 mm/min)
G1 X8.57142857143 Y27 Z3.85 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F1055.07499342
G1 X8.57142857143 Y27 Z0.25 F500
M107 ; FAN OFF
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X8.57142857143 Y32 Z0.25 F500
G1 X8.57142857143 Y32 Z2.65 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-10.7 Y32 Z2.65 F500
G1 X-10.7 Y13.1 Z2.65 F500
G1 X-10.7 Y13.1 Z0.05 F500
G1 X-10.7 Y0 Z0.05 F500
G1 X-10.7 Y0 Z2.89 F500
G1 X0 Y0 Z2.89 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z2.89 F500
G1 X30.5 Y-3.5 Z2.89 F500
;(y is:0 and Y-Value Here is: 10.3333333333)
G1 X30.5 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z2.89 F500
G1 X27 Y10.3333333333 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y10.3333333333 Z4.09 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y10.3333333333 Z4.09 F500
G1 X-12.0 Y10.3333333333 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y10.3333333333 Z3.13 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.13 F500
G1 X0 Y0 Z3.13 F500
;(<------END MOVE BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X0 Y-3.5 Z3.13 F500
G1 X30.5 Y-3.5 Z3.13 F500
;(y is:1 and Y-Value Here is: 13.6666666667)
G1 X30.5 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z3.13 F500
G1 X27 Y13.6666666667 Z0.25 F500
;(<------END MOVE BLOCK)

(########EXTRUSION BLOCK)
M106 S255 ; FAN WITH SPEED CONTROL
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2500 ; wait for 2500 milliseconds before movement
G1 X27 Y13.6666666667 Z4.33 F500

(------PAUSE FOR EXTRUSION BUILDUP)
G1 X-12.0 Y13.6666666667 Z4.33 F500
G1 X-12.0 Y13.6666666667 Z0.25 F500
M106 S255 ; FAN WITH SPEED CONTROL
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G4 P1000 ; pause for 1000 milliseconds
M107 ; FAN OFF
;(#######END of EXTRUSION BLOCK)

(------>MOVE BLOCK WITH SOME EXTRA CLEARANCE)
G1 X-17.0 Y13.6666666667 Z3.37 F500
G4 P3000 ; (wait for filament to harden fully, don't pull it sideways!)
G1 X-17.0 Y0 Z3.37 F500
G1 X0 Y0 Z3.37 F500
;(<------END MOVE BLOCK)
G1 X0 Y0 Z3.13 F500
;(####################### Second layer set begins)
G1 X0 Y0 Z3.53 F500
;(####################### Slow Down the Sealing Layer)
G1 X0 Y0 Z3.85 F125.0
;(####################### MAKE IT MORE OUTER PERIMETER STYLE SINCE IT IS SLOWER)

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P2000 ; wait for 2000 milliseconds before movement
G1 X-5.78461538462 Y-0.4 Z3.85 F125.0
G1 X-0.4 Y6.6 Z3.85 F125.0
G1 X-0.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y17.4 Z3.85 F125.0
G1 X20.4 Y6.6 Z3.85 F125.0
G1 X0.2 Y6.6 Z3.85 F125.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z3.85 F125.0
G1 X-1.2 Y2.4 Z3.85 F125.0
G1 X0 Y-1.2 Z3.85 F125.0
G1 X0 Y-1.2 Z4.25 F125.0
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.25 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.25 F275.0
G1 X0 Y7 Z4.25 F275.0
G1 X0 Y17 Z4.25 F275.0
G1 X20 Y17 Z4.25 F275.0
G1 X20 Y7 Z4.25 F275.0
G1 X0.6 Y7 Z4.25 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.25 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X0 Y-1.2 Z4.65 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-1.2 Z4.65 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z4.65 F275.0
G1 X0 Y7 Z4.65 F275.0
G1 X0 Y17 Z4.65 F275.0
G1 X20 Y17 Z4.65 F275.0
G1 X20 Y7 Z4.65 F275.0
G1 X0.6 Y7 Z4.65 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z4.65 F275.0
G1 X-1.2 Y2.4 Z4.65 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X0 Y-2.4 Z5.05 F275.0
G4 P3000 ; (PROGRAMMED COOLING / LAYER PAUSE)
;(#######END of EXTRUSION BLOCK)
;(####################### Regular Speed Successive Layers)
G1 X0 Y-2.4 Z5.05 F275.0

(########EXTRUSION BLOCK)
M128 S140 ; EXTRUSION pressure set
G4 P2500 ; wait for 4 sec to get up to pressure
M126 ; Start Extrusion at this PWM
G4 P1000 ; wait for 1000 milliseconds before movement
G1 X-5.38461538462 Y0 Z5.05 F275.0
G1 X0 Y7 Z5.05 F275.0
G1 X0 Y17 Z5.05 F275.0
G1 X20 Y17 Z5.05 F275.0
G1 X20 Y7 Z5.05 F275.0
G1 X0.6 Y7 Z5.05 F275.0
M127 ; (Stop Sugar Extruding)
G4 P50
M129 ; (Vent EtoP and stop current)
G1 X-4.78461538462 Y0 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.05 F275.0
G1 X-1.2 Y2.4 Z5.45 F275.0
G1 X0 Y-3.6 Z5.45 F275.0
;(NO LAYER PAUSE HERE)
;(#######END of EXTRUSION BLOCK)
G1 X0 Y0 Z5.45 F275.0

;(end of the file, shutdown routines)
M127 ; VALVE CLOSED
M129 ; this sets Extruder Off because of our wiring
G91 ; Relative positioning
G1 Z10 ; go up 10 mm
G28 ; Home x, then y, then z axes
G90 ; Absolute positioning
G1 X139 Y247 Z170 F20000; present prints to user. yay.
M84 ; motors off
