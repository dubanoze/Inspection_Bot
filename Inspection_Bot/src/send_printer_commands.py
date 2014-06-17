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
from printcore import printcore
from multiprocessing import Lock
import time
import getopt
import sys
import os
import math

speed = 2000.0 * 60 # mm / sec
wait_time_factor = 10.0

x_current_location = None
y_current_location = None

p = None

lock = Lock()

def Go_To(x,y):
    
    #lock.acquire
    global x_current_location
    global y_current_location
    global p
    if p is not None:
        gcode_command = "G0 X{0:.2f} Y{1:.2f} F1000".format(x,y)
        #print gcode_command
        distance = math.hypot(x-x_current_location, y-y_current_location)
        travel_time = distance / speed
        x_current_location=x
        y_current_location=y
        p.send_now(gcode_command)
        
    #lock.release

if __name__ == '__main__':
    global x_current_location
    global y_current_location
    global p
    if wait_time_factor < 1:
        wait_time_factor=1
    
    port = '/dev/ttyACM0'  # Default serial port to connect to printer
    temp = 210  # Default extrusion temperature

    print "Serial port:     %s" % (port if port else 'auto')
    
    
    # Connect to printer
    print("Connecting to printer..")
    try:
        p = printcore(port, 115200)
    except:
        print 'Error.'
        raise
    while not p.online:
        time.sleep(1)
        print('...')
    print " connected."
    
    time.sleep(2)
    
    #lock.acquire
    if x_current_location is None:
        
        p.send_now("G28 X F2000")  # ; Home X axis
        time.sleep(4)
        x_current_location=0
    #lock.release
    
    

    #lock.acquire
    if y_current_location is None:
        
        p.send_now("G28 Y F2000")  # ; Home Y axis
        time.sleep(4)
        y_current_location=0
    #lock.release
    
    #time.sleep(4)
    #time.sleep(4)
    

    Go_To(100,0)
    #time.sleep(4)
    #Go_To(100,100)
    #Go_To(100,0)
    #p.send_now("G0 X100 F2000")  # ; Move X axis to location 1000
    #time.sleep(4)


    p.send_now("M84")#; Motors off
    time.sleep(2)
    p.disconnect()
    print "disconnected"