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


if __name__ == '__main__':
    cv.NamedWindow("camera", 1)
    cv.NamedWindow("histogram",1)
    capture = cv.CaptureFromCAM(0)
    
    while True:
        img = cv.QueryFrame(capture)
        #gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
        cvm_img = np.asarray(img[:,:])
        
        #data = np.asarray(img[:,:])
        curve = hist_curve(cvm_img)
        cv2.imshow('histogram',curve)
        cv.ShowImage("camera", img)
        if cv.WaitKey(10) == 27: #Esc key to exit
            print "img type: "+str(type(img))
            print "cvm_img type: "+ str(type(cvm_img))
            cv.SaveImage("../saved_images/sample.png",img)
            break
    cv.DestroyAllWindows()
