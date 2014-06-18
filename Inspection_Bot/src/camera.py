#!/usr/bin/python

import cv2.cv as cv
import cv2
import array
import datetime

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
    capture = cv.CaptureFromCAM(0)
    previous_img = None
    img = None
    number_of_saved_images = 0
    similarity_value_list = [float(0)] * 10 #number of values changes variance
    same_position = None
    moving = None
    while True:
        key = cv.WaitKey(10)
        img = cv.QueryFrame(capture)
        cv.ShowImage("camera", img)      
        if img is not None:
            if update:
                previous_img = cv.CloneImage(img)
                update = False
            cvm_pre_img = np.asarray(previous_img[:,:])
            cvm_img = np.asarray(img[:,:])
            
            pre_gray = cv2.cvtColor(cvm_pre_img,cv2.COLOR_BGR2GRAY)
            gray = cv2.cvtColor(cvm_img,cv2.COLOR_BGR2GRAY)
            data = np.asarray(img[:,:])
            pre_curve = hist_curve(pre_gray)
            curve = hist_curve(gray)
            cv2.imshow('live histogram',curve)
            cv2.imshow('saved image histogram',pre_curve)
            h1=cv2.calcHist([gray],[0],None,[256],[0,256])
            h2=cv2.calcHist([pre_gray],[0],None,[256],[0,256])
            similarity_value = cv2.compareHist(h1,h2,method=cv.CV_COMP_CORREL)
            #print "Similarity Value = {0:.5f}".format(similarity_value)
            similarity_value_list.insert(0, similarity_value)
            similarity_value_list.pop()
            variance_value = np.var(similarity_value_list)
            #print "Variance Value = {0:.5f}".format(variance_value)
            
            same_position = .99 < similarity_value and  similarity_value <= 1.0
            #if same_position:
            #    print "same position"
            #else:
            #    print "different position"
            
            moving =variance_value > .00001
            #if moving:
            #    print "moving"
            #else:
            #    print "not moving"
            
            if same_position == False and moving == False:
                date_and_timestamp = datetime.datetime.now().strftime('on %Y-%m-%d @ %H:%M:%S.%f %p')
                save_file_name = "../saved_images/image_{0}.png".format(str("{0:0>3}".format(number_of_saved_images)))
                cv.SaveImage(save_file_name,img)
                print "saved file " + str(number_of_saved_images) + " " +  date_and_timestamp
                number_of_saved_images =number_of_saved_images + 1
                update = True


        if key == 110: #n key to update image
            update=True
        if key == 27: #Esc key to exit
            print "Update Flag " + str(update)
            print "img type: "+str(type(img))
            print "cvm_img type: "+ str(type(cvm_img))
            cv.SaveImage("../saved_images/final_image.png",img)
            break
    cv.DestroyAllWindows()
