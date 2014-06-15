#!/usr/bin/python

import cv2.cv as cv

#  --------------------------------------------------------------
#  Initialize Camera
#  --------------------------------------------------------------

def camera():
    cv.NamedWindow("camera", 1)
    
    capture = cv.CaptureFromCAM(0)
    
    while True:
        img = cv.QueryFrame(capture)
        cv.ShowImage("camera", img)
        if cv.WaitKey(10) == 27: #Esc key to exit
            cv.SaveImage("../saved_images/sample.png",img)
            break
    cv.DestroyAllWindows()
