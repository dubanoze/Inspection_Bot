#!/usr/bin/env python
# This file is part of the Printrun suite.
#
# Printrun is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# Printrun is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with Printrun.  If not, see <http://www.gnu.org/licenses/>.

# Interactive RepRap e axis calibration program
# (C) Nathan Zadoks 2011

s = 300  # Extrusion speed (mm/min)
n = 100  # Default length to extrude
m = 0  # User-entered measured extrusion length
k = 300  # Default amount of steps per mm
port = '/dev/ttyACM0'  # Default serial port to connect to printer
temp = 210  # Default extrusion temperature

tempmax = 250  # Maximum extrusion temperature

t = int(n * 60) / s  # Time to wait for extrusion

from printcore import printcore

import time
import getopt
import sys
import os


def w(s):
    sys.stdout.write(s)
    sys.stdout.flush()


# Parse options

# Show initial parameters
print "Initial parameters"
#print "Steps per mm:    %3d steps" % k
#print "Length extruded: %3d mm" % n
print
print "Serial port:     %s" % (port if port else 'auto')

p = None
try:
    # Connect to printer
    w("Connecting to printer..")
    try:
        p = printcore(port, 115200)
    except:
        print 'Error.'
        raise
    while not p.online:
        time.sleep(1)
        w('.')
    print " connected."
    
    p.send_now("G28 X")  # ; Home X axis
    #time.sleep(4)
    p.send_now("G0 X100 F2000")  # ; Move X axis to location 1000
    #time.sleep(4)
    p.send_now("M84")#; Motors off
    time.sleep(4)
    #p.send_now("M114")#; Motors off
    #time.sleep(4)
    print "GCode Sent"

    
except KeyboardInterrupt:
    pass
finally:
    if p: p.disconnect()
