#!/usr/bin/python

import multiprocessing
import cv2
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




def cam_loop(queue_from_cam):
    print 'initializing cam'
    cap = cv2.VideoCapture(0)
    print 'querying frame'
    hello, img = cap.read()
    print 'queueing image'
    queue_from_cam.put(img)
    print 'cam_loop done'
    




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
        
        p.send_now("G28 XY")  # ; Home X axis
        #time.sleep(4)
        #p.send_now("G0 X20 Y20 F5000")  # ; Move X axis to location 1000
        #time.sleep(4)
        #p.send_now("M84")#; Motors off
        #time.sleep(4)
        #p.send_now("M114")#; Motors off
        time.sleep(3)
        print "GCode Sent"
    
        
    except KeyboardInterrupt:
        pass
    #finally:
    #    if p: p.disconnect()
    
    queue_from_cam = multiprocessing.Queue()
    
    position = 1
    p.send_now("G0 X20 Y20 F3000")  # ; Move X axis to location 1000
    print "location 1 reached"
    time.sleep(5)
    
    cam_process = multiprocessing.Process(target=cam_loop,args=(queue_from_cam,))
    cam_process.start()
    


    print 'getting image'
    from_queue = queue_from_cam.get()
    print 'saving image'
    cv2.imwrite("../saved_images/position%s.png" % str(position), from_queue)
    print 'image saved'
    position += 1
    cam_process.join()
    
    
    p.send_now("G0 X25 F3000")  # ; Move X axis to location 1000
    print "location 2 reached"
    time.sleep(5)
    cam_process.start()
    print 'getting image'
    from_queue = queue_from_cam.get()
    print 'saving image'
    cv2.imwrite("../saved_images/position%s.png" % str(position), from_queue)
    print 'image saved'
    position += 1
    

#     cv.NamedWindow("camera", 1)
#     
#     capture = cv.CaptureFromCAM(0)
#     
#     
    
    
    
    # Finally disconnect from printer
    p.send_now("M84")#; Motors off
    if p: p.disconnect()
