#!/usr/bin/python



import cv2.cv as cv
from pronsole import *
import time
from printcore import printcore
import getopt
import sys
import os

def w(s):
    sys.stdout.write(s)
    sys.stdout.flush()



if __name__ == '__main__':
    port = '/dev/ttyACM0'  # Default serial port to connect to printer
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
    
    
    
    
    cv.NamedWindow("camera", 1)
    
    capture = cv.CaptureFromCAM(0)
    
    while True:
        img = cv.QueryFrame(capture)
        cv.ShowImage("camera", img)
        if cv.WaitKey(10) == 27: #Esc key to exit
            cv.SaveImage("../saved_images/sample.png",img)
            break
    cv.DestroyAllWindows()
