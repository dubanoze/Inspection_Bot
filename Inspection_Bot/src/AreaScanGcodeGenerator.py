
##### NEED TO FIX DIVISION OPERATOR!!!!!
from __future__ import division
#http://docs.python.org/release/2.2.3/whatsnew/node7.html
#The most controversial change in Python 2.2 heralds the start of an effort to fix an old design flaw that's been in Python from the beginning. Currently Python's division operator, /, behaves like C's division operator when presented with two integer arguments: it returns an integer result that's truncated down when there would be a fractional part. For example, 3/2 is 1, not 1.5, and (-1)/2 is -1, not -0.5. This means that the results of divison can vary unexpectedly depending on the type of the two operands and because Python is dynamically typed, it can be difficult to determine the possible types of the operands.
import time
from time import gmtime, strftime, localtime
import datetime


def now():
	# now = strftime("%I:%M:%S %p", gmtime())
	now = strftime("%A, %B %d, %Y @ %I:%M:%S %p", localtime())
	return now


#G1 Code Object
class GCode:
	def __init__(self, X=0, Y=0, Z=0, F=0):
		self.X =X
		self.Y =Y
		self.Z = Z
		self.F = F

	def __str__(self):
		string = "G0 X" + str(self.X) + " Y" + str(self.Y) + " Z" + str(self.Z) + " F" + str(self.F)
		return string





travelSpeed = 1000
slowSpeed = 1000
msec_pause = 700

yLength = 10
xLength = 20

# Set the Front Left corner position of the area to scan
# G0 X17 Y3 Z3.8
x_0 = 17
y_0 = 4
z_0 = 2.5

# Set the Back Right corner position of the area to scan
x_final = 137
y_final = 113
#assume we will finish at the same z-position and that we have no focus drift
z_final = z_0

#offset between imaging positions; this should be same for both the x and y directions
image_offset = 2


#Initialize ArealGcode
AreaScanGcode = GCode(X=0, Y=0, Z=0, F=travelSpeed)



filename = "AreaScanGcodeGenerator.gcode"
print "Preparing to output: " + filename

#Open the output file and paste on the "headers"
FILE = open(filename,"w")


FILE.writelines(";(***************AREA_SCAN_GCODE_GENERATOR*********************)\n")
FILE.writelines(";(*** " + str(now()) + " ***)\n")


FILE.writelines(""";(Copyright 2014 Jordan Miller, jmil@hive76.org, All Rights Reserved)
G28 ; Home x, then y, then z axes
G90 ; absolute coordinates
;(***************End of Beginning*********************)
""")


AreaScanGcode.Z = z_0
FILE.writelines(str(AreaScanGcode)+ " ; (go to start z-position)\n")
AreaScanGcode.X = x_0
AreaScanGcode.Y = y_0
# First move is slow
AreaScanGcode.F = slowSpeed
FILE.writelines(str(AreaScanGcode)+ " ; (go to start xy-position)\n\n")

#speedUp
AreaScanGcode.F = travelSpeed


x_current = x_0
y_current = y_0


while y_current < y_final:

	while x_current < x_final:
		x_current += image_offset
		AreaScanGcode.X = x_current
		FILE.writelines(str(AreaScanGcode)+ " ; (increment X position)\n")
		FILE.writelines("G4 P" + str(msec_pause) + "; pause for image analysis\n")
	
	y_current += image_offset
	AreaScanGcode.Y = y_current
	FILE.writelines("\n\n\n; Y-value incremented, x-value reset to x_0, and don't pause for image analysis here, just keep going\n")
	#reset x_current so we can start a new row
	x_current = x_0


		

FILE.writelines("""
;(end of the file, shutdown routines)
M84 ; motors off
""")



FILE.close
print "File: " + filename + " has been saved."




