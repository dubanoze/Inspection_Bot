#!/usr/bin/python

from multiprocessing import Process,Queue

#from camera import *
from printer_communication.printer_control import *
import time

#sys.path.append("..")
from Camera.camera_sync_with_printer import *


import cv2
#import re



### MIND WHERE THE OFFSETS ARE BEING ADDED!!!!!  HERE THEY ARE BEING ADDED AT PRINTER CONTROL
if __name__ == '__main__':
    printer_command_queue = Queue()
    camera_command_queue = Queue()

    camera_process = Process(target=Run_Camera_Test,args=(camera_command_queue,sys.stdout))
    printer_process = Process(target=run_console,args=(printer_command_queue,sys.stdout))
    
    printer_process.start()
    
    camera_process.start()
    #time.sleep(20)
    #printer_command_queue.put('start')
    printer_command_queue.put('next')
    time.sleep(5)
    printer_command_queue.put('next')
    time.sleep(5)
    
    for i in range(0,20):
        #cv.NamedWindow("main", 1)
        #k = cv2.waitKey(0)&0xFF
        camera_command_queue.put('snap')
        time.sleep(2)
        printer_command_queue.put('next')
        time.sleep(2)
        
        
    printer_command_queue.put('exit')
    time.sleep(2)
    camera_command_queue.put('exit')
    time.sleep(4)
    
    # Need to fix where directories path an consolidate file management.
    
    directory_names = os.listdir('../Chip_Files')
    
    saved_chip_count = 0
    
    
    
    for files_names in directory_names:
         if 'chip' in files_names:
             saved_chip_count=saved_chip_count+1
    

    
    os.rename("../saved_images","../Chip_Files/chip_{:d}".format(saved_chip_count))
    #camera_process.join()
    #printer_process.join()
    #camera_pr
    
    
    