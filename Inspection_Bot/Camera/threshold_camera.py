#!/usr/bin/python

import cv2
import numpy as np
import cv2.cv as cv
import math

#
#Citation:http://www.blogdugas.net/?p=120 
# structure and shape analysis discriptors http://docs.opencv.org/modules/imgproc/doc/structural_analysis_and_shape_descriptors.html
if __name__ == '__main__':
    cv.NamedWindow("camera", 1)
    
    capture = cv2.VideoCapture(0)
    
    width= capture.get(3)
    height = capture.get(4)
    camera_center = (width/2,height)
    while True:
        ret, frame = capture.read()
        
        #results returned by component_analysis were 
        #Estimated pixel minimum [-14.3828125, 4.4217581216490842, 128.4186480862943]
        # and
        #Estimated pixel maximum [31.6015625, 82.876236233722324, 207.21003743583384]
        # Because these values are outside of the range of the HSV spectrum, the color
        # threshold ranges have been calculated in pieces to obtain the disired pixels. 
        TARGET_COLOR_MIN = np.array([00, 4.4217581216490842, 128.4186480862943],np.uint8) #part center
        TARGET_COLOR_MAX = np.array([31.6015625, 82.876236233722324, 207.21003743583384],np.uint8)

        
        frameHSV = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
        frameThreshold = cv2.inRange(frameHSV, TARGET_COLOR_MIN, TARGET_COLOR_MAX)
        
        TARGET_COLOR_MIN = np.array([180-14.3828125, 4.4217581216490842, 128.4186480862943],np.uint8) #part center
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
        #http://docs.opencv.org/modules/imgproc/doc/structural_analysis_and_shape_descriptors.html?highlight=findcontours#contourarea 
        
        contours, hierarchy =cv2.findContours(frameThreshold.copy(),cv2.RETR_LIST,cv2.CHAIN_APPROX_SIMPLE)
        frameThreshold=cv.fromarray(frameThreshold)
        levels=3
        levels = levels - 3
        
        #h, w = img.shape[:2]
        #vis = np.zeros((h, w, 3), np.uint8)
        #contours = [cv2.approxPolyDP(cnt, 3, True) for cnt in contours0]  
        component_contours=[]
        for cnt in contours:
            if cv2.contourArea(cnt)>3000:
                component_contours.append(cnt)
        

            
        cv2.drawContours( frame, component_contours, contourIdx=-1, color=(128,255,255),thickness=-3)
        
        min_distance_comp = None
        min_center_point_value = float("Infinity")
        
        for cnt in component_contours:
            center_point = np.mean(cnt, axis = 0)
            center_point= center_point[0]
            x=int(center_point[0])
            y=int(center_point[1])
            center =(x,y)
            
            dist = math.hypot(center[0]-camera_center[0],center[1]-camera_center[1])
            #dist = np.linalg.norm(center-camera_center)
            if dist<min_center_point_value:
                min_center_point_value=dist
                min_distance_comp=cnt
            
        if min_distance_comp is not None:
            rec_points = cv2.boundingRect(min_distance_comp)
            cv2.rectangle(frame, (rec_points[0],rec_points[1]),(rec_points[0]+rec_points[2],rec_points[1]+rec_points[3]), color=(0,0,255),thickness=2)
            cv2.rectangle(frame, (rec_points[0],rec_points[1]-rec_points[3]/3),(rec_points[0]+rec_points[2],rec_points[1]+rec_points[3]+rec_points[3]/3), color=(255,0,0),thickness=2)
            cv2.circle(frame,(rec_points[0]+rec_points[2]/2,rec_points[1]+rec_points[3]/2),radius=3,color=(0,0,255),thickness=-1)
            cv2.rectangle(frame, (rec_points[0]-rec_points[2]/4,rec_points[1]-rec_points[3]),(rec_points[0]+rec_points[2]+rec_points[2]/4,rec_points[1]+rec_points[3]+rec_points[3]), color=(0,255,0),thickness=2)
        #print ret
        #if min_distance_comp is not None:
        #    point_1 = min_distance_comp[0]-30,min_distance_comp[1]-30
         #   point_2 = min_distance_comp[0]+30,min_distance_comp[1]+30
        #    cv2.rectangle(frame, point_1, point_2, color=(0,0,255),thickness=1)
        
        
        
            
        
        #for contour in contrs:
        #    print np.mean(contour,axis=0)
          
        #cv2.drawContours(frame, contours,contourIdx=-1,color=(255,0,0))
        
        #cv.ShowImage("threashold", frameThreshold)
        cv2.imshow("camera", frame)
        if cv.WaitKey(10) == 27:
            #print contrs
            #print len(contours)
            for cnt in contours:
                #print cv2.contourArea(cnt)
                print np.mean(cnt, axis = 0)
            #print component_contours
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
