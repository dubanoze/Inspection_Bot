#!/usr/bin/python

import cv2.cv as cv
import cv2
import datetime
import os
import numpy as np

bins = np.arange(256).reshape(256,1)




def hist_curve_mod(hist_item):
    h = np.zeros((300,256,3))
    curve_hist = create_zero_histogram()
    #hist_item = cv2.calcHist([im],[ch],None,[256],[0,256])
    cv2.normalize(hist_item,curve_hist,0,255,cv2.NORM_MINMAX)
    hist=np.int32(np.around(curve_hist))
    pts = np.int32(np.column_stack((bins,hist)))
    cv2.polylines(h,[pts],False,(255,255,255))
    y=np.flipud(h)
    return y

def create_zero_histogram():
    size = 200, 200, 3
    zero_matrix = np.zeros(size, dtype=np.uint8)
    #zero_np_array = np.asarray(zero_matrix[:,:])
    blank = cv2.cvtColor(zero_matrix,cv2.COLOR_BGR2GRAY)
    histogram=cv2.calcHist([blank],[0],None,[256],[0,256])
    return histogram



if __name__ == '__main__':
    update = True
    cv.NamedWindow("camera", 1)
    cv.NamedWindow("live histogram",1)
    cv.NamedWindow("saved image histogram",1)
    capture = cv.CaptureFromCAM(0)
    previous_img = None
    img = None
    number_of_saved_images = 0
    difference_value = 0
    difference_value_list = [float(0.0)]*10
    same_position = None
    moving = None
    previous_histogram = create_zero_histogram()
    current_histogram = create_zero_histogram()
    saved_image_histogram = create_zero_histogram()
    saved_curve = None
    pre_gray=None
    variance_value_threshold = 50000
    similarity_value_threshold = .99
    
    while True:
        img = cv.QueryFrame(capture)
           
        if img is not None:
            
            previous_histogram = current_histogram
            
            cvm_img = np.asarray(img[:,:])
            
            gray = cv2.cvtColor(cvm_img,cv2.COLOR_BGR2GRAY)
            
            current_histogram=cv2.calcHist([gray],[0],None,[256],[0,256])
            
            #if previous_histogram is not None:
            difference_value = cv2.compareHist(previous_histogram,current_histogram,method=cv.CV_COMP_CHISQR)
            
            difference_value_list.insert(0, difference_value)
            
            difference_value_list.pop()
            
            
            variance_value = np.var(difference_value_list)

            moving =variance_value > variance_value_threshold
            

             
            if update:
                saved_image_histogram = current_histogram
                update=False
            

            similarity_value = cv2.compareHist(saved_image_histogram,current_histogram,method=cv.CV_COMP_CORREL)
            
            same_position = similarity_value > similarity_value_threshold

            curve = hist_curve_mod(current_histogram)
            


            if same_position == False and moving == False:
                update = True
                date_and_timestamp = datetime.datetime.now().strftime('on %Y-%m-%d @ %H:%M:%S.%f %p')
                save_file_name = "../saved_images/image_{0}.png".format(str("{0:0>3}".format(number_of_saved_images)))
                if not os.path.exists(os.path.dirname(save_file_name)):
                    os.makedirs(os.path.dirname(save_file_name))
                cv.SaveImage(save_file_name,img)
                print "saved file " + str(number_of_saved_images) + " " +  date_and_timestamp
                number_of_saved_images =number_of_saved_images + 1
                pre_gray =gray


            if saved_image_histogram is not None:
                saved_curve = hist_curve_mod(saved_image_histogram)
                cv2.imshow('saved image histogram',saved_curve)
            cv.ShowImage("camera", img)   
            cv2.imshow('live histogram',curve)
        
        
        
 

        if cv.WaitKey(10) == 27: #Esc key to exit
            cv.SaveImage("../saved_images/final_image.png",img)
            break
    
    
    cv.DestroyAllWindows()
