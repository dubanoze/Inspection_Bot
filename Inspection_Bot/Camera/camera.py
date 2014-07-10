#!/usr/bin/python

import cv2.cv as cv
import cv2
import time 
import datetime
import os
import numpy as np
from multiprocessing import Queue


bins = np.arange(256).reshape(256,1)

def get_color_histograms(im):
    h = np.zeros((300,256,3))
    histograms = []
    if len(im.shape) == 2:
        color = [(255,255,255)]
    elif im.shape[2] == 3:
        color = [ (255,0,0),(0,255,0),(0,0,255) ]
    for ch, col in enumerate(color):
        hist_item = cv2.calcHist([im],[ch],None,[256],[0,256])
        histograms.append(hist_item)
        #cv2.normalize(hist_item,hist_item,0,255,cv2.NORM_MINMAX)
        #hist=np.int32(np.around(hist_item))
        #pts = np.int32(np.column_stack((bins,hist)))
        #cv2.polylines(h,[pts],False,col)
    #y=np.flipud(h)
    return histograms


def Run_Camera_Test(command_input=None,command_output=None):
    cv.NamedWindow("camera", 1)
    
    capture = cv.CaptureFromCAM(0)
    
    
    number_of_saved_images=0
    
    while True:
        img = cv.QueryFrame(capture)
        cv.ShowImage("camera", img)
        
        if command_input is not None and not command_input.empty():
            command = command_input.get()
            
            if command == 'snap':
                date_and_timestamp = datetime.datetime.now().strftime('on %Y-%m-%d @ %H:%M:%S.%f %p')
                save_file_name = "../saved_images/image_{0}.png".format(str("{0:0>3}".format(number_of_saved_images)))
                if not os.path.exists(os.path.dirname(save_file_name)):
                    os.makedirs(os.path.dirname(save_file_name))
                #cv.CloneImage(img)
                cv.SaveImage(save_file_name,img)
                print "saved file " + str(number_of_saved_images) + " " +  date_and_timestamp
                number_of_saved_images =number_of_saved_images + 1
            
            if command == 'exit':
                break; 
    
        if cv.WaitKey(10) == 27:
            break
        
        
    cv.DestroyAllWindows()

if __name__ == '__main__':
    Run_Camera_Test()