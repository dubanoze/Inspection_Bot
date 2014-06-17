#!/usr/bin/python

import cv2.cv as cv
import cv2


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
    cv.NamedWindow("histogram",1)
    capture = cv.CaptureFromCAM(0)
    previous_img = None
    img = None
    while True:

        img = cv.QueryFrame(capture)
        
        if img is not None:
            if update:
                previous_img = cv.CloneImage(img)
                update = False
            cvm_pre_img = np.asarray(previous_img[:,:])
            cvm_img = np.asarray(img[:,:])
            
            pre_gray = cv2.cvtColor(cvm_pre_img,cv2.COLOR_BGR2GRAY)
            gray = cv2.cvtColor(cvm_img,cv2.COLOR_BGR2GRAY)
            #data = np.asarray(img[:,:])
            pre_curve = hist_curve(pre_gray)
            curve = hist_curve(gray)
            cv2.imshow('histogram',curve)
            cv2.imshow('histogram2',pre_curve)
            h1=cv2.calcHist([gray],[0],None,[256],[0,256])
            h2=cv2.calcHist([pre_gray],[0],None,[256],[0,256])
            value = cv2.compareHist(h1,h2,method=cv.CV_COMP_CORREL)
            print "{0:.5f}".format(value);

            
        cv.ShowImage("camera", img)
        if cv.WaitKey(10) == 27: #Esc key to exit
            print "Update Flag " + str(update)
            print "img type: "+str(type(img))
            print "cvm_img type: "+ str(type(cvm_img))
            cv.SaveImage("../saved_images/sample.png",img)
            break
    cv.DestroyAllWindows()
