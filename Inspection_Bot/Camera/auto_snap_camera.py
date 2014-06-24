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

def hist_lines(im):
    if len(im.shape)!=2:
        print "hist_lines applicable only for grayscale images"
        #print "so converting image to grayscale for representation"
        im = cv2.cvtColor(im,cv2.COLOR_BGR2GRAY)
    hist_item = cv2.calcHist([im],[0],None,[256],[0,256])
    return hist_item


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
    difference_value_list = []
    same_position = None
    moving = None
    previous_histogram = None
    current_histogram =None
    saved_image_histogram = None
    saved_curve = None
    pre_gray=None
    while True:
        img = cv.QueryFrame(capture)
           
        if img is not None:
            

            cvm_img = np.asarray(img[:,:])
            

            gray = cv2.cvtColor(cvm_img,cv2.COLOR_BGR2GRAY)
            
            previous_histogram = current_histogram
            
            current_histogram=cv2.calcHist([gray],[0],None,[256],[0,256])

            
            if previous_histogram is not None:
                difference_value = cv2.compareHist(previous_histogram,current_histogram,method=cv.CV_COMP_CHISQR)
            difference_value_list.insert(0, difference_value)
            if len(difference_value_list) > 5:
                difference_value_list.pop()
            variance_value = np.var(difference_value_list)

            moving =variance_value > 50000
            

            
            
            if update:
                saved_image_histogram = current_histogram
                update=False
            

            
            similarity_value = cv2.compareHist(saved_image_histogram,current_histogram,method=cv.CV_COMP_CORREL)
            
            same_position = similarity_value >.99

            curve = hist_curve(gray)
            


            
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


            if pre_gray is not None:
                saved_curve = hist_curve(pre_gray)
                cv2.imshow('saved image histogram',saved_curve)
            cv.ShowImage("camera", img)   
            cv2.imshow('live histogram',curve)
        key = cv.WaitKey(10)     
        if key == 110: #n key to exit
            update = True

        if key == 27: #Esc key to exit
            cv.SaveImage("../saved_images/final_image.png",img)
            break
    cv.DestroyAllWindows()
