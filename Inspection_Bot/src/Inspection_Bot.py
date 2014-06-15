#!/usr/bin/python

import multiprocessing
import Image
import pickle

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


queue_from_cam = multiprocessing.Queue()

def cam_loop(queue_from_cam):
    print 'initializing cam'
    cam = cv.CaptureFromCAM(-1)
    print 'querying frame'
    img = cv.QueryFrame(cam)
    print 'converting image'
    pimg = img.tostring()
    print 'pickling image'
    pimg2 = pickle.dumps(pimg,-1)
    print 'queueing image'
    queue_from_cam.put([pimg2,cv.GetSize(img)])
    print 'cam_loop done'
    
def snap_image(position):
    print 'getting pickled image'
    from_queue = queue_from_cam.get()
    print 'unpickling image'
    pimg = pickle.loads(from_queue[0])
    print 'unconverting image'
    cv_im = cv.CreateImageHeader(from_queue[1], cv.IPL_DEPTH_8U, 3)
    cv.SetData(cv_im, pimg)
    print 'saving image'
    cv.SaveImage("../saved_images/position%s.png" % str(position),cv_im)
    print 'image saved'




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
    
    
    
    position = 1
    p.send_now("G0 X20 Y20 F3000")  # ; Move X axis to location 1000
    print "new location reached"
    time.sleep(5)
    
    cam_process = multiprocessing.Process(target=cam_loop,args=(queue_from_cam,))
    cam_process.start()
    while queue_from_cam.empty():
        pass
    
    snap_image(position)
    position += 1
    
    
    
    p.send_now("G0 X25 F3000")  # ; Move X axis to location 1000
    print "new location reached"
    time.sleep(3)
    #cam_process.get()
    #snap_image(position)
    position += 1
    #cam_process.join()
    

#     cv.NamedWindow("camera", 1)
#     
#     capture = cv.CaptureFromCAM(0)
#     
#     
    
    
    
    # Finally disconnect from printer
    p.send_now("M84")#; Motors off
    if p: p.disconnect()
