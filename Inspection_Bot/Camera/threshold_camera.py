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
#        TARGET_COLOR_MIN = np.array([00, 23,0],np.uint8) #part center
#        TARGET_COLOR_MAX = np.array([40,80,255],np.uint8)
        TARGET_COLOR_MIN = np.array([40, 0,0],np.uint8) #background Definitely use
        TARGET_COLOR_MAX = np.array([139,255,240],np.uint8)

#        TARGET_COLOR_MIN = np.array([0, 0,0],np.uint8) #metal contacts
#        TARGET_COLOR_MAX = np.array([255,20,255],np.uint8)
 
        frame = np.asarray(img[:,:])
        
        frameHSV = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
        frameThreshold = cv2.inRange(frameHSV, TARGET_COLOR_MIN, TARGET_COLOR_MAX)
        height, width, depth = frame.shape
        mask = np.zeros((height, width), np.uint8)
        cv2.bitwise_not(frameThreshold,mask)
        frameThreshold =mask
        #element = cv2.getStructuringElement(cv2.MORPH_RECT,(3,3))
        element = cv2.getStructuringElement(cv2.MORPH_RECT,(3,3))
        frameThreshold = cv2.erode(frameThreshold,element, iterations=2)
        frameThreshold = cv2.dilate(frameThreshold,element, iterations=2)
        frameThreshold = cv2.erode(frameThreshold,element)
        
        frameThreshold=cv.fromarray(frameThreshold)
        
        cv.ShowImage("camera", frameThreshold)
        if cv.WaitKey(10) == 27:
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
