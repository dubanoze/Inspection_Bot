#!/usr/bin/python

import multiprocessing
from multiprocessing import Process, Value, Array, Pipe, Lock
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

#Shared counter with Python's multiprocessing
#from http://eli.thegreenplace.net/2012/01/04/shared-counter-with-pythons-multiprocessing/
class Counter(object):
    def __init__(self, initval=0):
        self.val = Value('i', initval)
        self.lock = Lock()

    def increment(self):
        with self.lock:
            self.val.value += 1

    def value(self):
        with self.lock:
            return self.val.value



#The Pipe() function returns a pair of connection objects connected 
#by a pipe which by default is duplex (two-way). For example:
def f(conn):
    conn.send([42, None, 'hello'])
    conn.close()


def camera_feed(prev_position, curr_position, next_position):
    
    print 'Starting:', multiprocessing.current_process().name
    
    cap = cv2.VideoCapture(0)

    while(True):
       # Capture frame-by-frame
        ret, img = cap.read()
        # Display the resulting frame
        cv2.imshow('camera',img)
        i = 0
        #print "camera is observing at {0},{1}".format(str(prev_position.value()),str(curr_position.value()))
        if curr_position.value() != prev_position.value():
            #print "camera is about to photograph at {0},{1}".format(str(prev_position.value()),str(curr_position.value()))
            prev_position.increment()
            #print 'saving image'
            cv2.imwrite("../saved_images/position%s.png" % str(curr_position.value()), img)
            #print 'image saved'
            #print "prev position was incremented to %s" % str(prev_position.value())
        #print "so..., now camera is observing at {0},{1}".format(str(prev_position.value()),str(curr_position.value()))

        if cv.WaitKey(10) == 27: #Esc key to exit
            print "at position %s" % str(curr_position.value())
            break
    
    # When everything done, release the capture
    cap.release()
    cv2.destroyAllWindows()


    print 'Exiting :', multiprocessing.current_process().name

# def update_position(position):
#     print "at position %s" % str(curr_position)
#     curr_position = position
#     print "at position %s" % str(curr_position)



if __name__ == '__main__':
    

#The two connection objects returned by Pipe() represent 
#the two ends of the pipe. Each connection object has send() 
#and recv() methods (among others). Note that data in a pipe may 
#become corrupted if two processes (or threads) try to read from
# or write to the same end of the pipe at the same time. 
#Of course there is no risk of corruption from processes using 
#different ends of the pipe at the same time.
    
    
    
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
    
    
    # Setting up Shared Memory variables. this is like global variables, but it is process and thread safe. according to: https://docs.python.org/2/library/multiprocessing.html#sharing-state-between-processes 
    prev_position = Counter(0)
    curr_position = Counter(0)
    next_position = Counter(0)
    print type(prev_position)
    
    #these variables are sent to the camera_feed process, which can access and modify them
    d = multiprocessing.Process(name='camera_feed', target=camera_feed, args=(prev_position, curr_position, next_position))
    #d.daemon = True
    d.start()
        
    
    #queue_from_cam = multiprocessing.Queue()
    
    
    print "bot is now at position {0},{1}".format(str(prev_position.value()),str(curr_position.value()))
    p.send_now("G0 X37.10 Y46.00 F3000")  # ; Move X axis to location 1000
    time.sleep(1)
    curr_position.increment()
    print "bot was just moved to position {0},{1}".format(str(prev_position.value()),str(curr_position.value()))
    #snap_image(position)
    time.sleep(1)


    x=40.10
    delta=3.0
    for i in range (0,20):
        x=x+delta
        X_position = "{:.2f}".format(float(x))
        gcode_command = "G0"+ " " + "X" + X_position + " " + "F3000" 
        #gcode_command = "G0 X40.10 F3000"
        print gcode_command
        p.send_now(gcode_command)  # ; Move X axis to location 1000
        time.sleep(0.5)
        #snap_image(position)
        curr_position.increment()
        #snap_image(position)
        time.sleep(1)
    
    



#     cv.NamedWindow("camera", 1)
#     
#     capture = cv.CaptureFromCAM(0)
#     
#     
    
    d.join()
    
    # Finally disconnect from printer
    p.send_now("M84")#; Motors off
    if p: p.disconnect()
