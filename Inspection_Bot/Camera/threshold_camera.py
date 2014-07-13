#!/usr/bin/python

import cv2
import numpy as np
import cv2.cv as cv


#
#Citation:http://www.blogdugas.net/?p=120 
# structure and shape analysis discriptors http://docs.opencv.org/modules/imgproc/doc/structural_analysis_and_shape_descriptors.html
if __name__ == '__main__':
    cv.NamedWindow("camera", 1)
    
    capture = cv.CaptureFromCAM(0)
    
    while True:
        img = cv.QueryFrame(capture)
        TARGET_COLOR_MIN = np.array([00, 4.4217581216490842, 128.4186480862943],np.uint8) #part center
        TARGET_COLOR_MAX = np.array([31.6015625, 82.876236233722324, 207.21003743583384],np.uint8)
#        TARGET_COLOR_MIN = np.array([40, 0,0],np.uint8) #background Definitely use
#        TARGET_COLOR_MAX = np.array([139,255,240],np.uint8)

#        TARGET_COLOR_MIN = np.array([0, 0,0],np.uint8) #metal contacts
#        TARGET_COLOR_MAX = np.array([255,20,255],np.uint8)
 
        frame = np.asarray(img[:,:])
        
        frameHSV = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
        frameThreshold = cv2.inRange(frameHSV, TARGET_COLOR_MIN, TARGET_COLOR_MAX)
        
        TARGET_COLOR_MIN = np.array([180--14.3828125, 4.4217581216490842, 128.4186480862943],np.uint8) #part center
        TARGET_COLOR_MAX = np.array([180, 82.876236233722324, 207.21003743583384],np.uint8)
        frameThreshold2 = cv2.inRange(frameHSV, TARGET_COLOR_MIN, TARGET_COLOR_MAX)
        
        frameThreshold=cv2.bitwise_or(frameThreshold,frameThreshold2)
#        height, width, depth = frame.shape
#         mask = np.zeros((height, width), np.uint8)
#         cv2.bitwise_not(frameThreshold,mask)
#         frameThreshold =mask
        #element = cv2.getStructuringElement(cv2.MORPH_RECT,(3,3))
        element = cv2.getStructuringElement(cv2.MORPH_RECT,(3,3))
        frameThreshold = cv2.erode(frameThreshold,element, iterations=2)
        frameThreshold = cv2.dilate(frameThreshold,element, iterations=2)
        frameThreshold = cv2.erode(frameThreshold,element)
        
        
        contours, hierarchy =cv2.findContours(frameThreshold.copy(),cv2.RETR_LIST,cv2.CHAIN_APPROX_SIMPLE)
        frameThreshold=cv.fromarray(frameThreshold)
        levels=3
        levels = levels - 3
        
        #h, w = img.shape[:2]
        #vis = np.zeros((h, w, 3), np.uint8)
        #contours = [cv2.approxPolyDP(cnt, 3, True) for cnt in contours0]  
        cv2.drawContours( frame, contours, -1, (128,255,255))
        
        #for contour in contrs:
        #    print np.mean(contour,axis=0)
          
        #cv2.drawContours(frame, contours,contourIdx=-1,color=(255,0,0))
        
        #cv.ShowImage("threashold", frameThreshold)
        cv.ShowImage("camera", img)
        if cv.WaitKey(10) == 27:
            print contrs
            print len(contrs)
            break
    cv.DestroyAllWindows()


#pixel iteration
# for i in range(0, height):
#     for j in range(0, width):
# 
#         pixel_value = cv.Get2D(img, i, j)
#         # Since OpenCV loads color images in BGR, not RGB
#         b = pixel_value[0]
#         g = pixel_value[1]
#         r = pixel_value[2]
# 
#         #  cv.Set2D(result, i, j, value)
#         #  ^ to store results of per-pixel
#         #    operations at (i, j) in 'result' image
