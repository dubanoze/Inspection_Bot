#!/usr/bin/python

import cv2.cv as cv
import cv2
import datetime
import os
import numpy as np

bins = np.arange(256).reshape(256,1)




def Generate_Histogram_Curve(hist_item):
    h = np.zeros((300,256,3))
    curve_hist = Make_Zero_Hist()
    #hist_item = cv2.calcHist([im],[ch],None,[256],[0,256])
    cv2.normalize(hist_item,curve_hist,0,255,cv2.NORM_MINMAX)
    hist=np.int32(np.around(curve_hist))
    pts = np.int32(np.column_stack((bins,hist)))
    cv2.polylines(h,[pts],False,(255,255,255))
    y=np.flipud(h)
    return y

def Make_Zero_Hist():
    size = 200, 200, 3
    zero_matrix = np.zeros(size, dtype=np.uint8)
    histogram=Get_Hist_Info(zero_matrix)
    return histogram

def Get_Hist_Info(current_image):
    cvm_img = np.asarray(current_image[:,:])
    gray = cv2.cvtColor(cvm_img,cv2.COLOR_BGR2GRAY)
    current_histogram=cv2.calcHist([gray],[0],None,[256],[0,256])
    return current_histogram


if __name__ == '__main__':
    save_current_image = True
    cv.NamedWindow("camera", 1)
    cv.NamedWindow("live histogram",1)
    cv.NamedWindow("saved image histogram",1)
    capture = cv.CaptureFromCAM(0)
    current_image = None
    number_of_saved_images = 0
    difference_value = 0
    difference_value_list = [float(0.0)]*10
    same_position = None
    moving = None
    previous_histogram = Make_Zero_Hist()
    current_histogram = Make_Zero_Hist()
    saved_image_histogram = Make_Zero_Hist()
    saved_curve = None
    
    variance_value_threshold = 50000
    similarity_value_threshold = .99
    
    while True:
        
        current_image = cv.QueryFrame(capture)
           
        if current_image is not None:
            
            previous_histogram = current_histogram
            
            current_histogram=Get_Hist_Info(current_image)
            
            difference_value = cv2.compareHist(previous_histogram,current_histogram,method=cv.CV_COMP_CHISQR)
            
            difference_value_list.insert(0, difference_value)
            
            difference_value_list.pop()
            
            variance_value = np.var(difference_value_list)

            moving = variance_value > variance_value_threshold
            

             

            

            similarity_value = cv2.compareHist(saved_image_histogram,current_histogram,method=cv.CV_COMP_CORREL)
            
            same_position = similarity_value > similarity_value_threshold

            
            
            
            
            save_current_image =  ((same_position == False) and (moving == False))

            if save_current_image:
                
                saved_image_histogram = current_histogram
                
                date_and_timestamp = datetime.datetime.now().strftime('on %Y-%m-%d @ %H:%M:%S.%f %p')
                save_file_name = "../saved_images/image_{0}.png".format(str("{0:0>3}".format(number_of_saved_images)))
                if not os.path.exists(os.path.dirname(save_file_name)):
                    os.makedirs(os.path.dirname(save_file_name))
                cv.SaveImage(save_file_name,current_image)
                print "saved file " + str(number_of_saved_images) + " " +  date_and_timestamp
                number_of_saved_images =number_of_saved_images + 1





            saved_curve = Generate_Histogram_Curve(saved_image_histogram)
            cv2.imshow('saved image histogram',saved_curve)
            
            curve = Generate_Histogram_Curve(current_histogram)  
            cv2.imshow('live histogram',curve)
        
            cv.ShowImage("camera", current_image) 
 

        if cv.WaitKey(10) == 27: #Esc key to exit
            cv.SaveImage("../saved_images/final_image.png",current_image)
            break
    
    
    cv.DestroyAllWindows()
