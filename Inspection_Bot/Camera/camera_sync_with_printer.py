#!/usr/bin/python

import cv2.cv as cv
import cv2
import time 
import datetime
import os
import numpy as np
from multiprocessing import Queue

# a main function to tell whether the camera is working
# since there is no command queue sent to the run_camera function 
if __name__ == '__main__':
    Run_Camera_Test()


#allows for Inspection_Bot.py to control the usb microscope camera.
#the parameter command_input is used to send commands to the camera.
def Run_Camera_Test(command_input=None,command_output=None):
    cv.NamedWindow("camera", 1)
    
    #initialize the camera
    capture = cv.CaptureFromCAM(0)
    
    # a counter to keep track of save image file names
    number_of_saved_images=0
    
    while True:
        
        #capture an image from the camera
        img = cv.QueryFrame(capture)
        #display the image
        cv.ShowImage("camera", img)
        #if the camera has recieved a command from the command queue
        if command_input is not None and not command_input.empty():
            command = command_input.get()
            # if the command is snap
            if command == 'snap':
                #save the current image
                
                date_and_timestamp = datetime.datetime.now().strftime('on %Y-%m-%d @ %H:%M:%S.%f %p')
                # note the the saved image file path with be relative to the Inspection_Bot.py program
                #because it is the control program meaning all paths will be relative to it. 
                save_file_name = "../saved_images/image_{0}.png".format(str("{0:0>3}".format(number_of_saved_images)))
                if not os.path.exists(os.path.dirname(save_file_name)):
                    os.makedirs(os.path.dirname(save_file_name))

                cv.SaveImage(save_file_name,img)
                print "saved file " + str(number_of_saved_images) + " " +  date_and_timestamp
                number_of_saved_images =number_of_saved_images + 1
            # if the command is exit, 
            if command == 'exit':
                #stop the camera
                break; 
        # if the user hits Esc
        if cv.WaitKey(10) == 27:
            break
        
    #Close all windows before exiting. 
    cv.DestroyAllWindows()

