import cv2.cv as cv
import cv2
import time 
import os
import numpy as np
import math
if __name__ == '__main__':
    #directory='data/bot_movement_samples/'
    directory='data/laser_position_reference/'
    part_file_names = os.listdir(directory)
    part_file_names.sort()
    X_pixel_positions=[]
    Y_pixel_positions=[]
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
        retval, dst=cv2.threshold(gray, 100, 255, cv2.THRESH_BINARY_INV)
        #cv2.threshold(gray, 100, 255, cv2.THRESH_BINARY)
        #THRESH_BINARY_INV = 
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
        
        
            
        
        
        max_comp = None
        max_center_point_value = float("-Infinity")
        
        for cnt in contours:
            #print cnt
            area = cv2.contourArea(cnt)
            if area > max_center_point_value:
                
                max_center_point_value=area
                max_comp=cnt
        print max_center_point_value
        rectangle = cv2.boundingRect(max_comp)
        print rectangle
        X_pixel_positions.append(rectangle[0]+rectangle[2]/2)
        Y_pixel_positions.append(rectangle[1]+rectangle[3]/2)
            #center_point = np.mean(cnt, axis = 0)
            #center_point= center_point[0]
            #x=int(center_point[0])
            #y=int(center_point[1])
            #center =(x,y)
            
            #dist = math.hypot(center[0]-camera_center[0],center[1]-camera_center[1])
            #dist = np.linalg.norm(center-camera_center)
            #if dist<min_center_point_value:
             #   min_center_point_value=dist
             #   min_distance_comp=cnt
            #cv2.drawContours( img, contours, contourIdx=-1, color=(128,255,255),thickness=-3)
        #while True:
        #    cv.ShowImage("camera", img)
        #    if cv.WaitKey(10) == 27:
        #        break
    #print X_pixel_positions
    mean_x_position = np.mean(X_pixel_positions)
    mean_y_position = np.mean(Y_pixel_positions)
    print directory
    print "mean x position  = {0:f} , mean y position = {1:f}".format(mean_x_position, mean_y_position)
    dx = []
    x_1 = X_pixel_positions.pop(0)
    for i in range(0, len(X_pixel_positions)):
        x_2 = X_pixel_positions.pop(0)
        dx.append(x_2-x_1)
        x_1 =x_2
        
        #dx = []
    dy = []
    y_1 = Y_pixel_positions.pop(0)
    for i in range(0, len(Y_pixel_positions)):
        y_2 = Y_pixel_positions.pop(0)
        dy.append(y_2-y_1)
        y_1 =y_2
    mean_x_change = np.mean(dx)
    mean_y_change = np.mean(dy)
    print "dx/dslide = {0:f} , dy/dslide = {1:f}".format(mean_x_change, mean_y_change)