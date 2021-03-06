#!/usr/bin/python

from multiprocessing import Process,Queue

#from camera import *
from printer_communication.printer_control import *
import time

#sys.path.append("..")
from Camera.camera_sync_with_printer import *


import cv2




# Inspection_Bot.py
#  A program that allows for simultaneous control of both the printer and usb camera.
#  Every time a command is sent to the printer to go to the next coordinate, it is followed
# by a command to the camera to take a picture.
# 
# Because both the camera and printer must run simultaneous and independently from each other
# both programs are run as seperate processies. Inpsection_Bot.py controlls the actions of both by
# sending commands in the form of strings over a Queue set up for multiprocess communication.

# Currently the camera process will save images from the camera to the '../saved_images/' directory 
# relative to the directory where Inspection_Bot.py is saved.  In other words, in the 
# saved_imaged folder located one directory above Inspection_Bot.py.  Don't worry 
# if the saved_images folder has not been created, it will be autogenerated when 
# Inspection_Bot.py starts. 


if __name__ == '__main__':
    # set the time Inspection_Bot will wait to send commands to the printer and camera.
    command_delay = 2.0 #seconds
    
    #Initialize the queue that allow Inspection_Bot.py to communicate with
    #camera_sync_with_printer.py and printer_control.py
    printer_command_queue = Queue()
    camera_command_queue = Queue()
    
    #Create the variables to contol the camera and printer processes.
    camera_process = Process(target=Run_Camera_Test,args=(camera_command_queue,sys.stdout))
    printer_process = Process(target=run_printer,args=(printer_command_queue,sys.stdout))
    
    #start the camera and printer. Note: commands to the pinter are much slower than the camera.
    printer_process.start()
    time.sleep(5)
    camera_process.start()
    #time.sleep(20)
    
    #Send 50 commands to the printer and camera
    for i in range(0,200):
        
        time.sleep(command_delay)
        #tell the printer to go to it's next command
        printer_command_queue.put('next')
        
        time.sleep(command_delay)
        #tell the camera to take a picture
        camera_command_queue.put('snap')
    
    #tell the printer to stop and exit
    printer_command_queue.put('exit')
    time.sleep(command_delay)
    #tell the camera to stop and exit
    camera_command_queue.put('exit')
    
    
    #moving chip images from the a temperary 'saved_image_folder' to a more perimenant directory
    
    directory_names = os.listdir('../Chip_Files')
    
    saved_chip_count = 0
    
    
    
    for files_names in directory_names:
         if 'chip' in files_names:
             saved_chip_count=saved_chip_count+1
    

    
    os.rename("../saved_images","../Chip_Files/chip_{:d}".format(saved_chip_count))
    #End of program
    
    
    