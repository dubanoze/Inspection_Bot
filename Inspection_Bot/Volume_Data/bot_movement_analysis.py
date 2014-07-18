import cv2.cv as cv
import cv2
import time 
import os
import numpy as np
import math
if __name__ == '__main__':
    directory='data/bot_movement_samples/'
    part_file_names = os.listdir(directory)
    part_file_names.sort()
    for file in part_file_names:
        file_path = directory+file
        img = cv2.imread(file_path)
        print img.shape
        width= img.shape[0]
        height = img.shape[1]
        camera_center = (width/2,height)
        
        #print(type(img))
        #cv2.threshold( img, img, threshold_value, 255,threshold_type );
        #
        #cv2.cvtColor( img, img, cv2.COLOR_BGR2GRAY );
        gray = cv2.cvtColor(img,cv2.COLOR_BGR2GRAY)
        img=cv.fromarray(img.copy())
        print type(img)
        retval, dst=cv2.threshold(gray, 3, 255, cv2.THRESH_BINARY)
        #retval, dst=cv2.Threshold(img, 3, 255, cv2.THRESH_BINARY)
        
        #element = cv2.getStructuringElement(cv2.MORPH_RECT,(3,3))
        #frameThreshold = cv2.erode(img,element, iterations=2)
        #frameThreshold = cv2.dilate(frameThreshold,element, iterations=2)
        #frameThreshold = cv2.erode(frameThreshold,element)
        #print type(img)
        #img=cv.fromarray(img)
        #print type(img)
        #img = np.asarray(img[:,:])
        
        contours, hierarchy =cv2.findContours(dst,cv2.RETR_LIST,cv2.CHAIN_APPROX_SIMPLE)
        #frameThreshold=cv.fromarray(frameThreshold)
        levels=3
        levels = levels - 3
        
        #h, w = img.shape[:2]
        #vis = np.zeros((h, w, 3), np.uint8)
        #contours = [cv2.approxPolyDP(cnt, 3, True) for cnt in contours0]  
        
        
            
        #cv2.drawContours( img, contours, contourIdx=-1, color=(128,255,255),thickness=-3)
        
        min_distance_comp = None
        min_center_point_value = float("Infinity")
        
        for cnt in contours:
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
        while True:
            cv.ShowImage("camera", img)
            if cv.WaitKey(10) == 27:
                break