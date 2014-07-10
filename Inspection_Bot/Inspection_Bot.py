#!/usr/bin/python

from multiprocessing import Process,Queue

#from camera import *
from printer_communication.printer_control import *
import time

#sys.path.append("..")
from Camera.camera_sync_with_printer import *


import cv2





if __name__ == '__main__':
    printer_command_queue = Queue()
    camera_command_queue = Queue()

    camera_process = Process(target=Run_Camera_Test,args=(camera_command_queue,sys.stdout))
    printer_process = Process(target=run_console,args=(printer_command_queue,sys.stdout))
    
    printer_process.start()
    time.sleep(5)
    camera_process.start()
    #time.sleep(20)
    
    for i in range(0,5):
        #cv.NamedWindow("main", 1)
        #k = cv2.waitKey(0)&0xFF
        
        printer_command_queue.put('next')
        time.sleep(10)
        camera_command_queue.put('snap')
        
    printer_command_queue.put('exit')
    time.sleep(2)
    camera_command_queue.put('exit')
    #camera_process.join()
    #printer_process.join()
    #camera_pr
    
    
    