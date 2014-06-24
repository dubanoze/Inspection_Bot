#!/usr/bin/python

import cv2.cv as cv
import cv2
import datetime
import os
import numpy as np

bins = np.arange(256).reshape(256,1)

def hist_curve(im):
    h = np.zeros((300,256,3))
    if len(im.shape) == 2:
        color = [(255,255,255)]
    elif im.shape[2] == 3:
        color = [ (255,0,0),(0,255,0),(0,0,255) ]
    for ch, col in enumerate(color):
        hist_item = cv2.calcHist([im],[ch],None,[256],[0,256])
        cv2.normalize(hist_item,hist_item,0,255,cv2.NORM_MINMAX)
        hist=np.int32(np.around(hist_item))
        pts = np.int32(np.column_stack((bins,hist)))
        cv2.polylines(h,[pts],False,col)
    y=np.flipud(h)
    return y
    


if __name__ == '__main__':
    
    
    size = 200, 200, 3
    empty = np.asarray(np.zeros(size, dtype=np.uint8)[:,:])
    empty_image= cv2.cvtColor(empty,cv2.COLOR_BGR2GRAY)
    empty_histogram=cv2.calcHist([empty_image],[0],None,[256],[0,256])
    
    
    
    update = True
    cv.NamedWindow("camera", 1)
    cv.NamedWindow("live histogram",1)
    cv.NamedWindow("saved image histogram",1)
    capture = cv.CaptureFromCAM(0)
    previous_img = None
    current_img = None
    number_of_saved_images = 0
    difference_value = 0
    difference_value_list = [float(0)] * 5
    same_position = None
    moving = None
    previous_histogram = None
    current_histogram =empty_histogram
    saved_image_histogram = None
    saved_curve = None
    saved_gray_img=None
    
    
    
    while True:
        current_img = cv.QueryFrame(capture)
           
        if current_img is not None:
            
            previous_histogram = current_histogram
            
            cvm_current_img = np.asarray(current_img[:,:])

            current_gray_img = cv2.cvtColor(cvm_current_img,cv2.COLOR_BGR2GRAY)
            
            current_histogram=cv2.calcHist([current_gray_img],[0],None,[256],[0,256])
            
            difference_value = cv2.compareHist(previous_histogram,current_histogram,method=cv.CV_COMP_CHISQR)
            
            difference_value_list.insert(0, difference_value)
            
            difference_value_list.pop()
            
            variance_value = np.var(difference_value_list)

            moving =variance_value > 50000
            
            
             
            if update:
                saved_image_histogram = current_histogram
                update=False
            

            similarity_value = cv2.compareHist(saved_image_histogram,current_histogram,method=cv.CV_COMP_CORREL)
            
            same_position = similarity_value >.99

            curve = hist_curve(current_gray_img)
            


            if same_position == False and moving == False:
                update = True
                date_and_timestamp = datetime.datetime.now().strftime('on %Y-%m-%d @ %H:%M:%S.%f %p')
                save_file_name = "../saved_images/image_{0}.png".format(str("{0:0>3}".format(number_of_saved_images)))
                if not os.path.exists(os.path.dirname(save_file_name)):
                    os.makedirs(os.path.dirname(save_file_name))
                cv.SaveImage(save_file_name,current_img)
                print "saved file " + str(number_of_saved_images) + " " +  date_and_timestamp
                number_of_saved_images =number_of_saved_images + 1
                saved_gray_img =current_gray_img


            if saved_gray_img is not None:
                saved_curve = hist_curve(saved_gray_img)
                cv2.imshow('saved image histogram',saved_curve)
            cv.ShowImage("camera", current_img)   
            cv2.imshow('live histogram',curve)
        
        
        
 

        if cv.WaitKey(10) == 27: #Esc key to exit
            cv.SaveImage("../saved_images/final_image.png",current_img)
            break
    
    
    cv.DestroyAllWindows()
